package com.softserve.edu.web;

import java.util.Map;
import java.util.LinkedList;
import java.util.List;

import com.google.gson.Gson;
import com.softserve.edu.DTO.HostingDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.service.SearchService;
import com.softserve.edu.utils.Search;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = "/search")
	public String homeSearch(Map<String, Object> map) {
		map.put("host", new Hosting());
		return "search";
	}

	@RequestMapping(value = "/searchhosts",
           method = RequestMethod.GET)
    	public @ResponseBody
    	String searchAll(
            	@RequestParam(value = "country", required = false, defaultValue = "") String country,
            	@RequestParam(value = "region", required = false, defaultValue = "") String region,
            	@RequestParam(value = "pets", required = false, defaultValue = "") String pets,
            	@RequestParam(value = "children", required = false, defaultValue = "") String children,
            	@RequestParam(value = "smoking", required = false, defaultValue = "") String smoking,
            	@RequestParam(value = "family", required = false, defaultValue = "") String family,
            	@RequestParam(value = "maxNumberOfGuests", required = false, defaultValue = "") String count,
            	@RequestParam(value = "gender", required = false, defaultValue = "UNSPECIFIED" ) String gender,
            	Map<String, Object> map) {
            Search srchcountry = new Search("country", country);
            Search srchregion = new Search("region", region);
            Search srchpets = new Search("pets", pets);
            Search srchchildren = new Search("children", children);
            Search srchsmoking = new Search("smoking", smoking);
            Search srchfamily = new Search("family", family);
            Search srchMinCount = new Search("minNumberOfGuests", count);
            Search srchMaxCount = new Search("maxNumberOfGuests", count);
            Search srchGender = new Search("gender", gender);
            Search srchDateBegin = new Search("beginDate", dateBegin);
            Search srchDateEnd = new Search("ebdDate", dateEnd);
            map.put("country", country);
            map.put("region", region);
            map.put("pets", Boolean.parseBoolean(pets));
            map.put("children", Boolean.parseBoolean(children));
            map.put("smoking", Boolean.parseBoolean(smoking));
            map.put("family", Boolean.parseBoolean(family));
            map.put("count", count);
            map.put("gender", gender);
            map.put("date_begin", dateBegin);
            map.put("date_end", dateEnd);
            map.put("host", new Hosting());
            final List<HostingDTO> hostingDTOs = new LinkedList<HostingDTO>();
            final List<Hosting> hostings = searchService.getList(srchcountry, srchregion,
                srchpets, srchchildren, srchsmoking, srchfamily, srchMinCount,
                srchMaxCount, srchGender, srchDateBegin, srchDateEnd);
            for(Hosting hosting : hostings) {
                hostingDTOs.add(new HostingDTO(hosting, hosting.getOwner()));
            }
            Gson gson = new Gson();
            return gson.toJson(hostingDTOs);
        }

}

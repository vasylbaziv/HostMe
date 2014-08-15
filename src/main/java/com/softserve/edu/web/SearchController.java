package com.softserve.edu.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(value = "/searchhosts", method = RequestMethod.GET)
	public String searchAll(
			@RequestParam("country") String country,
			@RequestParam("region") String region,
			@RequestParam(value = "pets", required = false, defaultValue = "") String pets,
			@RequestParam(value = "children", required = false, defaultValue = "") String children,
			@RequestParam(value = "smoking", required = false, defaultValue = "") String smoking,
			@RequestParam(value = "family", required = false, defaultValue = "") String family,
			@RequestParam("maxNumberOfGuests") String count,
			Map<String, Object> map) {
		Search srchcountry = new Search("country", country);
		Search srchregion = new Search("region", region);
		Search srchpets = new Search("pets", pets);
		Search srchchildren = new Search("children", children);
		Search srchsmoking = new Search("smoking", smoking);
		Search srchfamily = new Search("family", family);
		Search srchMinCount = new Search("minNumberOfGuests", count);
		Search srchMaxCount = new Search("maxNumberOfGuests", count);
		map.put("host", new Hosting());
		map.put("hostsList", searchService.getList(srchcountry, srchregion,
				srchpets, srchchildren, srchsmoking, srchfamily, srchMinCount,
				srchMaxCount));
		return "search";
	}

}

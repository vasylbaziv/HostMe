package com.softserve.edu.utils;

/**
 * Created by john_darkwood on 11.08.2014.
 */
public class Search {

    private String name;
    private String value;

    //Constructors

    private Search() {

    }

    private Search(SearchBuilder builder) {
        this.name = builder.key;
        this.value = builder.value;
    }

    //Setters and getters


    public String getName() {
        return name;
    }

    public String getValue() {
        return value;
    }

    public static class SearchBuilder {

        private String key;
        private String value;

        public static void create(){
            Search search = new Search();
        }

        public SearchBuilder() {

        }

        public SearchBuilder setKey(String key) {
            this.key = key;
            return this;
        }

        public SearchBuilder setValue(String value) {
            this.value = value;
            return this;
        }

        public Search build() {
            return new Search(this);
        }

    }
}

package com.softserve.edu.auxiliarybean;

/**
 * Created by john_darkwood on 11.08.2014.
 */
public class Search {

    private String name;
    private String value;

    //Constructors

    public Search(String name, String value) {
        this.name = name;
        this.value = value;
    }

    //Setters and getters


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}

package com.javamaster.entity;

import javax.persistence.*;

@Entity
public class Estate {
    @Id
    @SequenceGenerator(name = "estate_sequence", sequenceName = "estate_sequence")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "estate_sequence")
    private Long id;

    private String name;
    private String city;
    private String address;
    private Double area;
    private Integer cost;


    public Estate(String name, String city, String address, Double area, Integer cost) {
        this.name = name;
        this.city = city;
        this.address = address;
        this.area = area;
        this.cost = cost;
    }

    public Estate() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "Estate{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", city='" + city + '\'' +
                ", address='" + address + '\'' +
                ", area=" + area +
                ", cost=" + cost +
                '}';
    }
}

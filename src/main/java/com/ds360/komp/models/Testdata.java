package com.ds360.komp.models;

import jakarta.persistence.*;

@Entity
public class Testdata {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "foo")
    private String foo;
    @Basic
    @Column(name = "bar")
    private Integer bar;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFoo() {
        return foo;
    }

    public void setFoo(String foo) {
        this.foo = foo;
    }

    public Integer getBar() {
        return bar;
    }

    public void setBar(Integer bar) {
        this.bar = bar;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Testdata testdata = (Testdata) o;

        if (id != testdata.id) return false;
        if (foo != null ? !foo.equals(testdata.foo) : testdata.foo != null) return false;
        if (bar != null ? !bar.equals(testdata.bar) : testdata.bar != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (foo != null ? foo.hashCode() : 0);
        result = 31 * result + (bar != null ? bar.hashCode() : 0);
        return result;
    }
}

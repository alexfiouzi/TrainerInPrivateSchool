
package com.project.schoolTrainer.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;


import javax.validation.constraints.Pattern;

import javax.validation.constraints.Size;

import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name = "trainer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Trainer.findAll", query = "SELECT t FROM Trainer t")
    , @NamedQuery(name = "Trainer.findById", query = "SELECT t FROM Trainer t WHERE t.id = :id")
    , @NamedQuery(name = "Trainer.findByName", query = "SELECT t FROM Trainer t WHERE t.name = :name")
    , @NamedQuery(name = "Trainer.findBySurname", query = "SELECT t FROM Trainer t WHERE t.surname = :surname")
    , @NamedQuery(name = "Trainer.findByAge", query = "SELECT t FROM Trainer t WHERE t.age = :age")})
public class Trainer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
        
    @Size(min=3,max=45,message="Name must be between 3 and 45")
    @Pattern(regexp="^[A-Za-z]*$",message = "Name must contain only letters")
    @Column(name = "name")  
    private String name;
        
    @Size(min=3,max=45,message="Surname must be between 3 and 45")    
    @Pattern(regexp="^[A-Za-z]*$",message = "Surname must contain only letters")  
    @Column(name = "surname")
    private String surname;
   
    @Min(value=22,message="Age must be over 22 years old")
    @Max(value=75,message="Age must be over 75 years old")
    
    @Column(name = "age")
    private Integer age;

    public Trainer() {
    }

    public Trainer(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Trainer)) {
            return false;
        }
        Trainer other = (Trainer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.project.schoolTrainer.model.Trainer[ id=" + id + " ]";
    }
    
}


package com.hms.Entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
@Entity
public class Profile {

   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String firstName;
    private String lastName;
    private String phone;
    private String password;
    private String email;
    private String address;
    private String gender;
    private String image;
     @OneToMany(mappedBy = "profile",cascade = CascadeType.ALL)
    private List<AddBooking> addBooking;
     
     // =new ArrayList<>()
    
    public void addBooking(AddBooking booking){
        addBooking.add(booking);
              booking.setProfile(this);
    }
    
   
    public Profile() {
    }

    public Profile(String firstName, String lastName, String phone, String password, String email, String address, String gender, String image) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.password = password;
        this.email = email;
        this.address = address;
        this.gender = gender;
        this.image = image;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<AddBooking> getAddBooking() {
        return addBooking;
    }

    public void setAddBooking(List<AddBooking> addBooking) {
        this.addBooking = addBooking;
    }

    @Override
    public String toString() {
        return "Profile{" + "Id=" + Id + ", firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", password=" + password + ", email=" + email + ", address=" + address + ", gender=" + gender + ", image=" + image + ", addBooking=" + addBooking + '}';
    }
    
}

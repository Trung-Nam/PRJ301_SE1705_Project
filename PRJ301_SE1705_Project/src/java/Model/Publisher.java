/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Publisher {
    private int publisherId;
    private String publisherName;
    private String description;

    public Publisher() {
    }

    public Publisher(int publisherId, String publisherName, String description) {
        this.publisherId = publisherId;
        this.publisherName = publisherName;
        this.description = description;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public String getPublisherName() {
        return publisherName;
    }

    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Publisher{" + "publisherId=" + publisherId + ", publisherName=" + publisherName + ", description=" + description + '}';
    }
    
    
}

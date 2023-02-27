/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Publisher;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IPublisherDAO {
	public List<Publisher> getAllPublishers() throws SQLException;

	public void addPublisher(String publisherName, String description ) throws SQLException;

	public void editPublisher(Publisher publisher) throws SQLException;

	public void deletePublisher(int publisherId) throws SQLException;
	
	public Publisher getById(int id) throws SQLException;
}

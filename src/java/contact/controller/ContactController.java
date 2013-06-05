/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package contact.controller;

import java.util.List;
import model.Contact;
import model.ContactHibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author hans delgado
 */
public class ContactController {
    
    private Session session=ContactHibernateUtil.getSessionFactory().getCurrentSession();
    
    public Contact Add(Contact contact)
    {
        try{
        session.beginTransaction();
        session.save(contact);
        session.getTransaction().commit();
        }catch(Exception e) {

        }
    return contact;
    }
    
    public List<Contact> list()
    {
        List<Contact> contactlist=null;
        try{
            session.beginTransaction();
            Query query = session.createQuery("from Contact");
            contactlist=(List<Contact>) query.list();
            session.getTransaction().commit();
        } catch(Exception e) {}
            return contactlist;
        }
}

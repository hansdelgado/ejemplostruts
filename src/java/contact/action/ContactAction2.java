/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package contact.action;

import com.opensymphony.xwork2.ActionSupport;
import contact.controller.ContactController;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import model.Contact;
import model.ContactHibernateUtil;

/**
 *
 * @author hans delgado
 */
public class ContactAction2 extends ActionSupport{
    private Contact contact;
    private List<Contact>listcontact;
    private  ContactController controller;

    public ContactAction2() {
        controller=new ContactController();
    }
    
    public Contact getContact() {
        return contact;
    }

    public List<Contact> getListcontact() {
        return listcontact;
    }

    public void setListcontact(List<Contact> listcontact) {
        this.listcontact = listcontact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }
    
    @Override
    public String execute()
    {

        listcontact= controller.list();
        return SUCCESS;
    }
    public String add()
    {

       contact= controller.Add(getContact());
        listcontact=controller.list();
        
         return SUCCESS;
    }
    
}

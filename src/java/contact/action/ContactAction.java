/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package contact.action;

import com.opensymphony.xwork2.ActionSupport;
import model.Contact;

/**
 *
 * @author hans delgado
 */
public class ContactAction extends ActionSupport{
    private String msg;
    private Contact contact;

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }
    
    public String addContact() {
        return SUCCESS;
    }
}
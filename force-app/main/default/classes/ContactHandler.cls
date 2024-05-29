public class ContactHandler {
    public static void createContact(String firstName, String lastName, String email) {

        // Ensure all necessary information is present
        if (String.isBlank(firstName) || String.isBlank(lastName) || String.isBlank(email)) {
            throw new IllegalArgumentException('First Name, Last Name, and Email cannot be null or empty.');
        }
        
        // Create the new contact record
        Contact newContact = new Contact(
            FirstName = firstName,
            LastName = lastName,
            Email = email
        );
        
        // Insert the new contact record
        insert newContact;
    }
}

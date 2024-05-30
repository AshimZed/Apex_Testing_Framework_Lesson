@isTest
private class ContactHandler_Test {
    
    @isTest
    static void createContact_Success() {

        // Arrange - set up the method inputs
        String firstName = 'John';
        String lastName = 'Doe';
        String email = 'john.doe@example.com';

        // Act - call the function we are looking to test
        Test.startTest();
        ContactHandler.createContact(firstName, lastName, email);
        Test.stopTest();

        // Assert - verify our function acted as intended
        Contact insertedContact = [SELECT FirstName, LastName, Email FROM Contact WHERE Email = :email];
        
        Assert.areEqual(firstName, insertedContact.FirstName);
        Assert.areEqual(lastName, insertedContact.LastName);
        Assert.areEqual(email, insertedContact.Email);
    }
}
Feature: Register Tax Type Organization - Register Tax Type

  @org @org-taxtypes-only @sanity @org-taxtypes
  Scenario Outline: To Verify the Process of Registering Organization Tax Type - <TaxType>
    Given User navigates to the login page
    When Enters the username "tripsuser" and password "Passw0rd" to login
    Then Go to Registration > Register Taxtype
    Then Search for Organization tin to register taxtype for
    Then Select taxtype to register and fill required details "<TaxType>"
    Then Verify success message "Record Added"
    Then Submit taxtype registration application
    Then Verify success message "Processing Completed - Reference Number"
    Then Obtain reference number for ind registration "Processing Completed - Reference Number - ARN"
    Then Open CRM and close modal
    Then Click on registration application link
    Then switch to frame0
    Then search individual registration reference number
    Then Click on reference number
    Then switch to frame1
    And Click on NextStage button
    Then switch to frame1
    And Select taxtype Approval outcome dropdown value to Approve "Effective Date of Registration"
    Then Click on Save button
    Then switch to frame1
    And Verify approval "Approved"
    Examples:
      | TaxType            |
      | Company Income Tax |

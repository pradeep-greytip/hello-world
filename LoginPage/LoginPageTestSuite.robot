*** Settings ***
Documentation     A test suite with a single test for valid login.
#Suite Setup
#Suite Teardown
Library           SeleniumLibrary
Resource          LoginPageResource.robot

*** Test Cases ***
Testcase_001-LoginPage
    login to Application as a Employee with Valid credentials
    login to Application as a Employee with InValid credentials
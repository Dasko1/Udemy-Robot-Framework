*** Settings ***
Library         SeleniumLibrary
Resource        PO/LandingPage.robot
Resource        PO/TopNav.robot
Resource        PO/SearchResults.robot
Resource        PO/Product.robot
Resource        PO/Cart.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    SearchResults.Verify Search Completed

Add Product to Cart
     Product.Verify Page Loaded
     Product.Add to Cart

Begin Checkout
    Cart.Verify Product Added
    # Cart.Proceed to Checkout

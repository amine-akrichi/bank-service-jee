package org.example.bankservicejee.controller;

import service.BankWS;

public class test {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        BankWS bankWS = new BankWS();
        System.out.println(bankWS.getBankServicePort().getBalance());
    }
}

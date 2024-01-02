
package service;


import jakarta.jws.WebMethod;
import jakarta.jws.WebParam;
import jakarta.jws.WebResult;
import jakarta.jws.WebService;
import jakarta.xml.bind.annotation.XmlSeeAlso;
import jakarta.xml.ws.Action;
import jakarta.xml.ws.RequestWrapper;
import jakarta.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "BankService", targetNamespace = "http://service.example.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface BankService {


    /**
     * 
     * @return
     *     returns double
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getBalance", targetNamespace = "http://service.example.org/", className = "service.GetBalance")
    @ResponseWrapper(localName = "getBalanceResponse", targetNamespace = "http://service.example.org/", className = "service.GetBalanceResponse")
    @Action(input = "http://service.example.org/BankService/getBalanceRequest", output = "http://service.example.org/BankService/getBalanceResponse")
    public double getBalance();

    /**
     * 
     * @param amount
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "withdraw", targetNamespace = "http://service.example.org/", className = "service.Withdraw")
    @ResponseWrapper(localName = "withdrawResponse", targetNamespace = "http://service.example.org/", className = "service.WithdrawResponse")
    @Action(input = "http://service.example.org/BankService/withdrawRequest", output = "http://service.example.org/BankService/withdrawResponse")
    public boolean withdraw(
        @WebParam(name = "amount", targetNamespace = "")
        double amount);

    /**
     * 
     * @param amount
     */
    @WebMethod
    @RequestWrapper(localName = "deposit", targetNamespace = "http://service.example.org/", className = "service.Deposit")
    @ResponseWrapper(localName = "depositResponse", targetNamespace = "http://service.example.org/", className = "service.DepositResponse")
    @Action(input = "http://service.example.org/BankService/depositRequest", output = "http://service.example.org/BankService/depositResponse")
    public void deposit(
        @WebParam(name = "amount", targetNamespace = "")
        double amount);

}
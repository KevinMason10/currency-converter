<!--**********************************************************************************************************************************-->
<!--This JSP takes parameters from currencyinput.jsp and calls java classes to access currency conversion rate API and a SQLite Database-->
<!--Program outputs the conversion rate, a picture of the currency, as well as the final amount, rounded to 2 decimal places-->
<!--**********************************************************************************************************************************-->

<%@ page import="java.math.BigDecimal"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="com.currencyexchange.CurrencyConverterTest"%>
<%@ page import="com.currencyexchange.DataBaseAccessor"%>
<%@ page import="java.sql.ResultSet"%>

<%DataBaseAccessor accessor1 = new DataBaseAccessor();%>

<html>
    <body>
        <%
        CurrencyConverterTest converter = new CurrencyConverterTest();
        
        String countryName = request.getParameter("currency1");
        String countryName2 = request.getParameter("currency2");
        
        String currencyCode = converter.getCountryCode(countryName, countryName2);
        converter.callCurrencyConversionRateAPI(currencyCode);
        
        //grabs data from a specific row in the DB
        ResultSet results1 = accessor1.getDataBaseResults2(countryName);
        ResultSet results2 = accessor1.getDataBaseResults2(countryName2);
     
        try{
            double amount = Double.parseDouble(request.getParameter("amount"));
            if(amount < 0)
                throw new IllegalArgumentException();
            String currencyName;
            double finalAmount;
        %>
            <table>
                <tr>
                    <td colspan="100%" style="text-align:center;background-color:ffffcc">
                        <h1>North American Currency Converter</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                        double exchangeRate = converter.getExchangeRate(currencyCode);
                        %>
                        Today's Exchange Rate: <%=exchangeRate%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                        finalAmount = exchangeRate * amount;
                        BigDecimal roundedAmount = new BigDecimal(finalAmount);
                        
                        //rounds amount to 2 decimal places
                        roundedAmount = roundedAmount.setScale(2, BigDecimal.ROUND_HALF_UP);
                        
                        String stringAmount = roundedAmount.toString();
                        double amountBeforeCommas = Double.parseDouble(stringAmount);
                        
                        //formats amount to have commas at appropriate intervals
                        DecimalFormat decimalNumbersFormattedToCommas = new DecimalFormat("#,###.00");
                        String roundedAmountWithCommas = decimalNumbersFormattedToCommas.format(amountBeforeCommas);
                        
                        currencyName = results2.getString(accessor1.currencyName);
                        String finalCurrency = converter.makeCurrencyPlural(currencyName, finalAmount);
                        %>
                        Final Currency Amount: <%=roundedAmountWithCommas + " " + finalCurrency + "."%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!--images sourced from freeimages.com-->
                        <img src="/currencyconverter/<%=countryName2%>.png" width="500" height="300">
                    </td>
                </tr>
            
                <tr>
                    <td>
                        <a href="currencyinput.jsp">back to North American Currency Exchange input</a>
                    </td>
                </tr>
            </table>
        <%
        }
        catch(Exception e){
        %>
            INVALID AMOUNT. Please make sure to input only positive rational numbers, in decimal format.<br><br>
            <a href="currencyinput.jsp">back to North American Currency Exchange input</a>
        <%
        }
        %>
        
    </body>
</html>

<!--*************************************************************************************************************************************-->
<!--This JSP lets the user pick from a drop down menu of countries that correlate to specific currencies-->
<!--Drop down list is fed by a SQLite DB-->
<!--The user also types in how much currency there is to be converted-->
<!--This input is submitted and sent to currencyoutput.jsp which runs java code to call an API for up to the hour currency exchange rates-->
<!--*************************************************************************************************************************************-->

<%@ page import="com.currencyexchange.DataBaseAccessor"%>
<%@ page import="java.sql.ResultSet"%>

<%DataBaseAccessor accessor = new DataBaseAccessor();%>

<html>
    <body>
        <form action="currencyoutput.jsp">
        
        <table>
            <tr>
                <td colspan="100%" style="text-align:center;background-color:ffffcc">
                    <h1>North American Currency Converter</h1>
                </td>
            </tr>
            <tr>
                <td colspan="100%">
                    <img src="/currencyconverter/currency_exchange.png" align="center">
                </td>
            </tr>
            <tr>
                <td>
                    Pick two currencies you want to convert.
                <td>
            </tr>
            <tr>
                <td>
                    Currency 1 (What you want to convert from)
                </td>
                <td>
                    <select name="currency1">
                        <%
                        ResultSet results1 = accessor.getDataBaseResults(accessor.countryName);
                        while(results1.next()){
                        %>
                            <option value="<%=results1.getString(accessor.countryName)%>">
                                <%=results1.getString(accessor.countryName)%>
                            </option>
                        <%
                        }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Currency 2 (What you want to convert to)
                </td>
                <td>
                    <select name="currency2">
                        <%
                        ResultSet results2 = accessor.getDataBaseResults(accessor.countryName);
                        while(results2.next()){
                        %>
                            <option value="<%=results2.getString(accessor.countryName)%>">
                                <%=results2.getString(accessor.countryName)%>
                            </option>
                        <%
                        }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    How much do you want to convert?<input name="amount" type="text">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </body>
</html>

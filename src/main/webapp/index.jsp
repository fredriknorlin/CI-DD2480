<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="ci.Database"%>

<html>
    <%
        Database db = new Database();
        ArrayList<String[]> list = db.getHistory();
    %>
    <head>
        <title>Java Code Geeks Snippets - Sample JSP Page</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>commitHash</th>
                    <th>date</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(String[] sa : list) {
                %>
                    <tr>
                        <td>
                            <a href='<%=sa[0]%>'>
                                <%=sa[0]%>
                            </a>
                        </td>
                        <td><%=sa[1]%></td>
                    </tr>
                <%
                };
                %>
            </tbody>
        </table>
    </body>
</html>
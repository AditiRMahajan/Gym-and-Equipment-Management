
                            <%
                        try {
                            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                            statement = connection.createStatement();
                            String sql = "SELECT * FROM equipment";

                            resultSet = statement.executeQuery(sql);
                            while (resultSet.next()) {
                    %>

                    

                        <td><%=resultSet.getString((1)%></td>
                        <td><%=resultSet.getString(2)%></td>
                        <td><%=resultSet.getString(3)%></td>
                        <td><%=resultSet.getString(4)%></td>
                        <td><%=resultSet.getInt(5)%></td>
                        <td><%=resultSet.getString(6)%></td>
                        <td><%=resultSet.getString(7)%></td>
                        <td><%=resultSet.getString(8)%></td>
                    

                    <%
                            }

                        } catch (SQLException ex) {
                            ex.getSQLState();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }


                    %>


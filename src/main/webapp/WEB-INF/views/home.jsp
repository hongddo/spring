<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>Home</title>
</head>
<body>
    <h1>Hello world!</h1>
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.password}</td>
                    <td>${member.grade}</td>
                    <td>${member.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

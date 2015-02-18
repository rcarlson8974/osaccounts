<tbody id="accountListTableBody">
<g:each in="${accounts}" status="i" var="accountInstance">
    <tr>
        <td>${fieldValue(bean: accountInstance, field: "accountCategory.name")}</td>
        <td>${fieldValue(bean: accountInstance, field: "description")}</td>
        <td>${fieldValue(bean: accountInstance, field: "username")}</td>
        <td>${fieldValue(bean: accountInstance, field: "passwordHint")}</td>
        <td>${fieldValue(bean: accountInstance, field: "pinHint")}</td>
        <td>${fieldValue(bean: accountInstance, field: "url")}</td>
        <td>${fieldValue(bean: accountInstance, field: "notes")}</td>
        <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span><span class="glyphicon glyphicon-trash pad-left-10" aria-hidden="true"></span></td>
    </tr>
</g:each>
</tbody>


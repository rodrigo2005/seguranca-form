# seguranca-ldap-form

### No projeto na pasta resources tem as informações necessarias para configurar o projeto:

Versãoo do java neste exemplo: 1.6 <br/>
Servidor: jboss-as-7.1.1.Final

* Configure o standalone.xml
No subsystem de security adicione as seguintes linhas dentro da tag <security-domains>
<p>
<security-domain name="jaasTesteJaas" cache-type="default">
<authentication>
<login-module code="Database" flag="required">
<module-option name="dsJndiName" value="java:/TesteJaas"/>
<module-option name="principalsQuery" value="select password from user where email=?"/>
<module-option name="rolesQuery" value="select r.name, 'Roles' from user u, role r, user_role ur where u.id = ur.user_id AND r.id = ur.role_id AND u.email = ?"/>
<module-option name="hashAlgorithm" value="MD5"/>
<module-option name="hashEncoding" value="base64"/>
</login-module>
</authentication>
 </security-domain> 
</p>

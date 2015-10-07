<cfcomponent>
	
	<cffunction name="myFunction" access="remote" returntype="MyResponse" hint="Usando componentes do ColdFusion para definir tipos de dados para web service. http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec22c24-7dbf.html">
		<cfargument name="myArgument" type="myDataType[]">

		<cfset response = createObject("MyResponse")>	
		<cfset response.status = "Ok">	
		<cfset response.message = "Tudo certo :)">
					
		<cftry>

			<!--- Seu processo --->

			<cfcatch>
				<cfset response.status = "Ops! Ocorreu algum problema :( ">	
				<cfset response.message = cfcatch.Message>
			</cfcatch>
		</cftry>
		 
		<cfreturn response>
	</cffunction>

</cfcomponent>	
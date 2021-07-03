xquery version "1.0";

(: Generated with EditiX at Fri Jan 08 12:32:13 CET 2010 :)


<personals total="{count(//person)}">

{
for $person in //person
	return <person id="{$person/name/given}"/>
}
</personals>

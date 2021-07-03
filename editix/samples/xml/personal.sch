<?xml version="1.0" encoding="UTF-8"?>

<!-- New Schematron document created with EditiX XML Editor (http://www.editix.com) at Fri Dec 30 16:00:08 GMT+01:00 2016 -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron">
   <pattern>
      <title>Personal ID</title>
      <rule context="//person">
         <assert test="not(contains(@id,'Big'))">ID cannot contain big</assert>
      </rule>
   </pattern>
</schema>

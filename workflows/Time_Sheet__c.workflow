<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_Owner_to_Project_Lead_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Project_Leads</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change Owner to Project Lead Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Time_Sheet_to_Approved</fullName>
        <field>Approved__c</field>
        <literalValue>1</literalValue>
        <name>Set Time Sheet to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner_to_Approval_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Approval</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Owner to Approval Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>

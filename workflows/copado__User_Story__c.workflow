<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_Owner_to_Architect_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Architects</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change Owner to Architect Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
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
        <fullName>Change_Status_to_Sprint_Planning</fullName>
        <field>copado__Status__c</field>
        <literalValue>Sprint Planning</literalValue>
        <name>Change Status to Sprint Planning</name>
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

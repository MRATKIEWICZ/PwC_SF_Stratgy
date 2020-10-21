<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_Owner_to_All_Design_User_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>All_Design_Users</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change Owner to All Design User Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
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
        <fullName>Change_Owner_to_Business_Analysts_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Analysts</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change Owner to Business Analysts Queue</name>
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
        <fullName>Change_Status_to_Create_User_Stories</fullName>
        <field>Status__c</field>
        <literalValue>User Story Creation</literalValue>
        <name>Change Status to Create User Stories</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Status_to_In_Design</fullName>
        <field>Status__c</field>
        <literalValue>In Design</literalValue>
        <name>Change Status to In Design</name>
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

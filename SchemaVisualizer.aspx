<%@ Page CodeBehind="SchemaVisualizer.aspx.vb" Inherits="Exact.Online.Web.Other.SchemaVisualizer" %>

<!DOCTYPE html>
<html>
<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
	<style>
		.link {
			stroke: #ccc;
		}

		.node text {
			pointer-events: none;
			font: 0.8em sans-serif;
		}

		.ui-dialog-titlebar-close {
			visibility: hidden;
		}

		.ui-dialog .ui-dialog-content {
			/*background: none repeat scroll 0 0 transparent;
            overflow: scroll;*/
			width: 400px;
			border: 0 none;
			padding: 0.5em 1em;
			font-size: 0.8em;
		}
	</style>
</head>

<body>
	<form runat="server" style="height: 50px;">
		
		<div id="legend" style="float: right; padding-right: 50px; padding-top: 50px; text-align:center;	">
			<div style="padding:50px; ">
			<asp:DropDownList runat="server" ID="dropdown" AutoPostBack="true">
				<asp:ListItem Text="AbsenceMutations" Value="AbsenceMutations" />
				<asp:ListItem Text="AbsenceMutationTypeInputs" Value="AbsenceMutationTypeInputs" />
				<asp:ListItem Text="AbsenceMutationTypes" Value="AbsenceMutationTypes" />
				<asp:ListItem Text="AbsenceRegistrations" Value="AbsenceRegistrations" />
				<asp:ListItem Text="AbsenceRegistrationStatus" Value="AbsenceRegistrationStatus" />
				<asp:ListItem Text="AbsenceTypeCategories" Value="AbsenceTypeCategories" />
				<asp:ListItem Text="AccessIdentifierActions" Value="AccessIdentifierActions" />
				<asp:ListItem Text="AccessIdentifierAssociations" Value="AccessIdentifierAssociations" />
				<asp:ListItem Text="AccessIdentifierParties" Value="AccessIdentifierParties" />
				<asp:ListItem Text="AccessIdentifierPartyDetails" Value="AccessIdentifierPartyDetails" />
				<asp:ListItem Text="AccessIdentifiers" Value="AccessIdentifiers" />
				<asp:ListItem Text="AccessIdentifierStandards" Value="AccessIdentifierStandards" />
				<asp:ListItem Text="AccountAccountClassifications" Value="AccountAccountClassifications" />
				<asp:ListItem Text="AccountAdministrationLinks" Value="AccountAdministrationLinks" />
				<asp:ListItem Text="AccountAdministrations" Value="AccountAdministrations" />
				<asp:ListItem Text="AccountAdministrationStatus" Value="AccountAdministrationStatus" />
				<asp:ListItem Text="AccountantRoles" Value="AccountantRoles" />
				<asp:ListItem Text="AccountClassificationNames" Value="AccountClassificationNames" />
				<asp:ListItem Text="AccountClassifications" Value="AccountClassifications" />
				<asp:ListItem Text="AccountExtensions" Value="AccountExtensions" />
				<asp:ListItem Text="AccountOrigins" Value="AccountOrigins" />
				<asp:ListItem Text="Accounts" Value="Accounts" />
				<asp:ListItem Text="AccountStatus" Value="AccountStatus" />
				<asp:ListItem Text="AccountTaxonomyMappings" Value="AccountTaxonomyMappings" />
				<asp:ListItem Text="AccountTypes" Value="AccountTypes" />
				<asp:ListItem Text="AccountValidationActions" Value="AccountValidationActions" />
				<asp:ListItem Text="AccountValidations" Value="AccountValidations" />
				<asp:ListItem Text="AccountValidationTypes" Value="AccountValidationTypes" />
				<asp:ListItem Text="ActiveUserDivisions" Value="ActiveUserDivisions" />
				<asp:ListItem Text="ActiveUserRoles" Value="ActiveUserRoles" />
				<asp:ListItem Text="ActivityLog" Value="ActivityLog" />
				<asp:ListItem Text="ActivityLogActions" Value="ActivityLogActions" />
				<asp:ListItem Text="ActivityLogTypes" Value="ActivityLogTypes" />
				<asp:ListItem Text="ActivitySectors" Value="ActivitySectors" />
				<asp:ListItem Text="Addresses" Value="Addresses" />
				<asp:ListItem Text="AddressPostcodeGeolocations" Value="AddressPostcodeGeolocations" />
				<asp:ListItem Text="AddressPostcodes" Value="AddressPostcodes" />
				<asp:ListItem Text="AddressStates" Value="AddressStates" />
				<asp:ListItem Text="AddressTypes" Value="AddressTypes" />
				<asp:ListItem Text="Agencies" Value="Agencies" />
				<asp:ListItem Text="AgencySubTypes" Value="AgencySubTypes" />
				<asp:ListItem Text="AgencyTypes" Value="AgencyTypes" />
				<asp:ListItem Text="AlertActionTargets" Value="AlertActionTargets" />
				<asp:ListItem Text="AlertLog" Value="AlertLog" />
				<asp:ListItem Text="Alerts" Value="Alerts" />
				<asp:ListItem Text="AlertStatus" Value="AlertStatus" />
				<asp:ListItem Text="AllocationRules" Value="AllocationRules" />
				<asp:ListItem Text="AllocationRuleWords" Value="AllocationRuleWords" />
				<asp:ListItem Text="AnnouncementActions" Value="AnnouncementActions" />
				<asp:ListItem Text="AnnouncementFeatureSets" Value="AnnouncementFeatureSets" />
				<asp:ListItem Text="Announcements" Value="Announcements" />
				<asp:ListItem Text="AnnouncementUserActions" Value="AnnouncementUserActions" />
				<asp:ListItem Text="APGDifferentiationEmploymentRelationCodes" Value="APGDifferentiationEmploymentRelationCodes" />
				<asp:ListItem Text="APGProductVariants" Value="APGProductVariants" />
				<asp:ListItem Text="AppBilling" Value="AppBilling" />
				<asp:ListItem Text="ApplicationLogApplications" Value="ApplicationLogApplications" />
				<asp:ListItem Text="ApplicationLogDays" Value="ApplicationLogDays" />
				<asp:ListItem Text="ApplicationLogHours" Value="ApplicationLogHours" />
				<asp:ListItem Text="ApplicationLogUserHour" Value="ApplicationLogUserHour" />
				<asp:ListItem Text="ApprovalStatus" Value="ApprovalStatus" />
				<asp:ListItem Text="AppUsageFreeReasons" Value="AppUsageFreeReasons" />
				<asp:ListItem Text="AppUsageLines" Value="AppUsageLines" />
				<asp:ListItem Text="AreaUnits" Value="AreaUnits" />
				<asp:ListItem Text="AssemblyOrders" Value="AssemblyOrders" />
				<asp:ListItem Text="AssemblyOrderSources" Value="AssemblyOrderSources" />
				<asp:ListItem Text="AssemblyOrderStatus" Value="AssemblyOrderStatus" />
				<asp:ListItem Text="AssetEngineTypes" Value="AssetEngineTypes" />
				<asp:ListItem Text="AssetGroups" Value="AssetGroups" />
				<asp:ListItem Text="Assets" Value="Assets" />
				<asp:ListItem Text="AssetStatus" Value="AssetStatus" />
				<asp:ListItem Text="AssimilatedVatBoxes" Value="AssimilatedVatBoxes" />
				<asp:ListItem Text="Attachments" Value="Attachments" />
				<asp:ListItem Text="AttachmentTypes" Value="AttachmentTypes" />
				<asp:ListItem Text="AuditTrailEntityTypes" Value="AuditTrailEntityTypes" />
				<asp:ListItem Text="AuditTrailLog" Value="AuditTrailLog" />
				<asp:ListItem Text="AuditTrailLogActions" Value="AuditTrailLogActions" />
				<asp:ListItem Text="BackflushEntries" Value="BackflushEntries" />
				<asp:ListItem Text="BackflushEntrySources" Value="BackflushEntrySources" />
				<asp:ListItem Text="BackflushEntryStatus" Value="BackflushEntryStatus" />
				<asp:ListItem Text="BackflushEntryTypes" Value="BackflushEntryTypes" />
				<asp:ListItem Text="BackflushTransactions" Value="BackflushTransactions" />
				<asp:ListItem Text="BackflushTransactionStatus" Value="BackflushTransactionStatus" />
				<asp:ListItem Text="BackflushTransactionTypes" Value="BackflushTransactionTypes" />
				<asp:ListItem Text="BackgroundTaskBaseTypes" Value="BackgroundTaskBaseTypes" />
				<asp:ListItem Text="BackgroundTaskLocks" Value="BackgroundTaskLocks" />
				<asp:ListItem Text="BackgroundTasks" Value="BackgroundTasks" />
				<asp:ListItem Text="BackgroundTaskTypes" Value="BackgroundTaskTypes" />
				<asp:ListItem Text="BankAccountFormats" Value="BankAccountFormats" />
				<asp:ListItem Text="BankAccountRanges" Value="BankAccountRanges" />
				<asp:ListItem Text="BankAccounts" Value="BankAccounts" />
				<asp:ListItem Text="BankChannels" Value="BankChannels" />
				<asp:ListItem Text="BankFileFormats" Value="BankFileFormats" />
				<asp:ListItem Text="BankLinks" Value="BankLinks" />
				<asp:ListItem Text="Banks" Value="Banks" />
				<asp:ListItem Text="BankSyncCodes" Value="BankSyncCodes" />
				<asp:ListItem Text="BapiLog" Value="BapiLog" />
				<asp:ListItem Text="BelcotaxTypes" Value="BelcotaxTypes" />
				<asp:ListItem Text="BlockingStatus" Value="BlockingStatus" />
				<asp:ListItem Text="BRINs" Value="BRINs" />
				<asp:ListItem Text="Budgets" Value="Budgets" />
				<asp:ListItem Text="BudgetScenarios" Value="BudgetScenarios" />
				<asp:ListItem Text="BudgetStatus" Value="BudgetStatus" />
				<asp:ListItem Text="BulkProcesses" Value="BulkProcesses" />
				<asp:ListItem Text="BulkProcessFailures" Value="BulkProcessFailures" />
				<asp:ListItem Text="BusinessTypes" Value="BusinessTypes" />
				<asp:ListItem Text="BusinessUnits" Value="BusinessUnits" />
				<asp:ListItem Text="BusinessUnitStatus" Value="BusinessUnitStatus" />
				<asp:ListItem Text="CalculatedFields" Value="CalculatedFields" />
				<asp:ListItem Text="CalculationMethodParameters" Value="CalculationMethodParameters" />
				<asp:ListItem Text="CalculationMethodParameterTypes" Value="CalculationMethodParameterTypes" />
				<asp:ListItem Text="CalculationMethods" Value="CalculationMethods" />
				<asp:ListItem Text="CalculationMethodSetInputs" Value="CalculationMethodSetInputs" />
				<asp:ListItem Text="CalculationMethodSetOutputs" Value="CalculationMethodSetOutputs" />
				<asp:ListItem Text="CalculationMethodSets" Value="CalculationMethodSets" />
				<asp:ListItem Text="CalculationMethodSteps" Value="CalculationMethodSteps" />
				<asp:ListItem Text="CalculatorTypes" Value="CalculatorTypes" />
				<asp:ListItem Text="CampaignAccounts" Value="CampaignAccounts" />
				<asp:ListItem Text="CampaignContacts" Value="CampaignContacts" />
				<asp:ListItem Text="Campaigns" Value="Campaigns" />
				<asp:ListItem Text="CampaignTypes" Value="CampaignTypes" />
				<asp:ListItem Text="CashflowTransactionHistory" Value="CashflowTransactionHistory" />
				<asp:ListItem Text="CashflowTransactionLines" Value="CashflowTransactionLines" />
				<asp:ListItem Text="CashflowTransactionLinks" Value="CashflowTransactionLinks" />
				<asp:ListItem Text="CashflowTransactionReconciliations" Value="CashflowTransactionReconciliations" />
				<asp:ListItem Text="CashflowTransactions" Value="CashflowTransactions" />
				<asp:ListItem Text="CashflowTransactionSources" Value="CashflowTransactionSources" />
				<asp:ListItem Text="CashflowTransactionStatus" Value="CashflowTransactionStatus" />
				<asp:ListItem Text="CashflowTransactionTypes" Value="CashflowTransactionTypes" />
				<asp:ListItem Text="CenterProfileLocations" Value="CenterProfileLocations" />
				<asp:ListItem Text="CenterProfiles" Value="CenterProfiles" />
				<asp:ListItem Text="CenterProfileTags" Value="CenterProfileTags" />
				<asp:ListItem Text="CenterProfileTypes" Value="CenterProfileTypes" />
				<asp:ListItem Text="CenterTagGroups" Value="CenterTagGroups" />
				<asp:ListItem Text="CenterTags" Value="CenterTags" />
				<asp:ListItem Text="CentralBankExchangeRates" Value="CentralBankExchangeRates" />
				<asp:ListItem Text="Certifications" Value="Certifications" />
				<asp:ListItem Text="CertificationsAwarded" Value="CertificationsAwarded" />
				<asp:ListItem Text="Classifications" Value="Classifications" />
				<asp:ListItem Text="CloudFileContainers" Value="CloudFileContainers" />
				<asp:ListItem Text="CloudFileContainerTypes" Value="CloudFileContainerTypes" />
				<asp:ListItem Text="CloudFileProviders" Value="CloudFileProviders" />
				<asp:ListItem Text="CollaborationActions" Value="CollaborationActions" />
				<asp:ListItem Text="CollaborationCategories" Value="CollaborationCategories" />
				<asp:ListItem Text="CollaborationHistory" Value="CollaborationHistory" />
				<asp:ListItem Text="CollaborationHistoryTypes" Value="CollaborationHistoryTypes" />
				<asp:ListItem Text="CollaborationRecipients" Value="CollaborationRecipients" />
				<asp:ListItem Text="CollaborationRequests" Value="CollaborationRequests" />
				<asp:ListItem Text="CollaborationRequestStatus" Value="CollaborationRequestStatus" />
				<asp:ListItem Text="CollaborationTypeActions" Value="CollaborationTypeActions" />
				<asp:ListItem Text="CollaborationTypes" Value="CollaborationTypes" />
				<asp:ListItem Text="CollandCAOCodes" Value="CollandCAOCodes" />
				<asp:ListItem Text="CompanySizes" Value="CompanySizes" />
				<asp:ListItem Text="ConsolidationScenarios" Value="ConsolidationScenarios" />
				<asp:ListItem Text="Contacts" Value="Contacts" />
				<asp:ListItem Text="ContractEvents" Value="ContractEvents" />
				<asp:ListItem Text="ContractLines" Value="ContractLines" />
				<asp:ListItem Text="ContractMutations" Value="ContractMutations" />
				<asp:ListItem Text="ContractProcessingStatus" Value="ContractProcessingStatus" />
				<asp:ListItem Text="Contracts" Value="Contracts" />
				<asp:ListItem Text="ContractStatistics" Value="ContractStatistics" />
				<asp:ListItem Text="ContractTerms" Value="ContractTerms" />
				<asp:ListItem Text="ControlTypes" Value="ControlTypes" />
				<asp:ListItem Text="ConversionStatus" Value="ConversionStatus" />
				<asp:ListItem Text="CostAccountMappings" Value="CostAccountMappings" />
				<asp:ListItem Text="Costcenters" Value="Costcenters" />
				<asp:ListItem Text="CostPlanning" Value="CostPlanning" />
				<asp:ListItem Text="CostRollUpScenarioMakeBuy" Value="CostRollUpScenarioMakeBuy" />
				<asp:ListItem Text="CostRollUpScenarioRunResults" Value="CostRollUpScenarioRunResults" />
				<asp:ListItem Text="CostRollUpScenarioRuns" Value="CostRollUpScenarioRuns" />
				<asp:ListItem Text="CostRollUpScenarioRunStatus" Value="CostRollUpScenarioRunStatus" />
				<asp:ListItem Text="CostRollUpScenarios" Value="CostRollUpScenarios" />
				<asp:ListItem Text="CostRollUpScenarioStatus" Value="CostRollUpScenarioStatus" />
				<asp:ListItem Text="Costunits" Value="Costunits" />
				<asp:ListItem Text="Countries" Value="Countries" />
				<asp:ListItem Text="CountryClasses" Value="CountryClasses" />
				<asp:ListItem Text="CountryClassNames" Value="CountryClassNames" />
				<asp:ListItem Text="CreditCards" Value="CreditCards" />
				<asp:ListItem Text="CreditCardStatus" Value="CreditCardStatus" />
				<asp:ListItem Text="CreditCardTransactionHistory" Value="CreditCardTransactionHistory" />
				<asp:ListItem Text="CreditCardTransactionTypes" Value="CreditCardTransactionTypes" />
				<asp:ListItem Text="CreditCardTypes" Value="CreditCardTypes" />
				<asp:ListItem Text="CreditManagementActions" Value="CreditManagementActions" />
				<asp:ListItem Text="CreditManagementActionStarts" Value="CreditManagementActionStarts" />
				<asp:ListItem Text="CreditManagementDocuments" Value="CreditManagementDocuments" />
				<asp:ListItem Text="CreditManagementHistory" Value="CreditManagementHistory" />
				<asp:ListItem Text="CreditManagementScenarioRules" Value="CreditManagementScenarioRules" />
				<asp:ListItem Text="CreditManagementScenarios" Value="CreditManagementScenarios" />
				<asp:ListItem Text="CreditManagementStatus" Value="CreditManagementStatus" />
				<asp:ListItem Text="Currencies" Value="Currencies" />
				<asp:ListItem Text="CustomerFeatureSets" Value="CustomerFeatureSets" />
				<asp:ListItem Text="CustomerSubscriptionStatistics" Value="CustomerSubscriptionStatistics" />
				<asp:ListItem Text="Databases" Value="Databases" />
				<asp:ListItem Text="DatabaseStatisticsHistory" Value="DatabaseStatisticsHistory" />
				<asp:ListItem Text="DataSubscriptions" Value="DataSubscriptions" />
				<asp:ListItem Text="DATEVOnlineExportLog" Value="DATEVOnlineExportLog" />
				<asp:ListItem Text="DATEVOnlineTopicTypes" Value="DATEVOnlineTopicTypes" />
				<asp:ListItem Text="DaylightSavingDates" Value="DaylightSavingDates" />
				<asp:ListItem Text="DDChangeActions" Value="DDChangeActions" />
				<asp:ListItem Text="DDChangeColumns" Value="DDChangeColumns" />
				<asp:ListItem Text="DDChangeIndexColumns" Value="DDChangeIndexColumns" />
				<asp:ListItem Text="DDChangeIndexes" Value="DDChangeIndexes" />
				<asp:ListItem Text="DDChanges" Value="DDChanges" />
				<asp:ListItem Text="DDChangeTables" Value="DDChangeTables" />
				<asp:ListItem Text="DDColumnFeatureSets" Value="DDColumnFeatureSets" />
				<asp:ListItem Text="DDColumns" Value="DDColumns" />
				<asp:ListItem Text="DDIndexColumns" Value="DDIndexColumns" />
				<asp:ListItem Text="DDIndexes" Value="DDIndexes" />
				<asp:ListItem Text="DDReferenceColumns" Value="DDReferenceColumns" />
				<asp:ListItem Text="DDReferences" Value="DDReferences" />
				<asp:ListItem Text="DDTables" Value="DDTables" />
				<asp:ListItem Text="DDTests" Value="DDTests" />
				<asp:ListItem Text="DDViewFeatureSets" Value="DDViewFeatureSets" />
				<asp:ListItem Text="DDViewFieldFeatureSets" Value="DDViewFieldFeatureSets" />
				<asp:ListItem Text="DDViewFields" Value="DDViewFields" />
				<asp:ListItem Text="DDViews" Value="DDViews" />
				<asp:ListItem Text="DDViewTypes" Value="DDViewTypes" />
				<asp:ListItem Text="DeclarationPeriods" Value="DeclarationPeriods" />
				<asp:ListItem Text="DEEricCodes" Value="DEEricCodes" />
				<asp:ListItem Text="DEEricDeliveries" Value="DEEricDeliveries" />
				<asp:ListItem Text="Delegations" Value="Delegations" />
				<asp:ListItem Text="Departments" Value="Departments" />
				<asp:ListItem Text="DepreciationMethods" Value="DepreciationMethods" />
				<asp:ListItem Text="DepreciationPlans" Value="DepreciationPlans" />
				<asp:ListItem Text="DepreciationTypes" Value="DepreciationTypes" />
				<asp:ListItem Text="Digipass" Value="Digipass" />
				<asp:ListItem Text="DisabledFeatureSets" Value="DisabledFeatureSets" />
				<asp:ListItem Text="DiscountTables" Value="DiscountTables" />
				<asp:ListItem Text="DiscountTypes" Value="DiscountTypes" />
				<asp:ListItem Text="DivisionBackups" Value="DivisionBackups" />
				<asp:ListItem Text="DivisionClasses" Value="DivisionClasses" />
				<asp:ListItem Text="DivisionClassNames" Value="DivisionClassNames" />
				<asp:ListItem Text="DivisionClassValues" Value="DivisionClassValues" />
				<asp:ListItem Text="DivisionCurrencies" Value="DivisionCurrencies" />
				<asp:ListItem Text="DivisionDivisionTypes" Value="DivisionDivisionTypes" />
				<asp:ListItem Text="DivisionMoves" Value="DivisionMoves" />
				<asp:ListItem Text="DivisionPeriodStatus" Value="DivisionPeriodStatus" />
				<asp:ListItem Text="Divisions" Value="Divisions" />
				<asp:ListItem Text="DivisionStatistics" Value="DivisionStatistics" />
				<asp:ListItem Text="DivisionStatisticsHistory" Value="DivisionStatisticsHistory" />
				<asp:ListItem Text="DivisionStatus" Value="DivisionStatus" />
				<asp:ListItem Text="DivisionTopics" Value="DivisionTopics" />
				<asp:ListItem Text="DivisionTransfers" Value="DivisionTransfers" />
				<asp:ListItem Text="DivisionTypeFeatureSets" Value="DivisionTypeFeatureSets" />
				<asp:ListItem Text="DivisionTypes" Value="DivisionTypes" />
				<asp:ListItem Text="DocumentCategories" Value="DocumentCategories" />
				<asp:ListItem Text="DocumentEmailAddresses" Value="DocumentEmailAddresses" />
				<asp:ListItem Text="DocumentFieldFeatureSets" Value="DocumentFieldFeatureSets" />
				<asp:ListItem Text="DocumentFieldOptionFeatureSets" Value="DocumentFieldOptionFeatureSets" />
				<asp:ListItem Text="DocumentFieldOptions" Value="DocumentFieldOptions" />
				<asp:ListItem Text="DocumentFields" Value="DocumentFields" />
				<asp:ListItem Text="DocumentFolders" Value="DocumentFolders" />
				<asp:ListItem Text="DocumentProjects" Value="DocumentProjects" />
				<asp:ListItem Text="DocumentReferences" Value="DocumentReferences" />
				<asp:ListItem Text="Documents" Value="Documents" />
				<asp:ListItem Text="DocumentSources" Value="DocumentSources" />
				<asp:ListItem Text="DocumentsToBeProcessed" Value="DocumentsToBeProcessed" />
				<asp:ListItem Text="DocumentTypeCategories" Value="DocumentTypeCategories" />
				<asp:ListItem Text="DocumentTypeFeatureSets" Value="DocumentTypeFeatureSets" />
				<asp:ListItem Text="DocumentTypes" Value="DocumentTypes" />
				<asp:ListItem Text="EbcBasicTypes" Value="EbcBasicTypes" />
				<asp:ListItem Text="EbcBrowsers" Value="EbcBrowsers" />
				<asp:ListItem Text="EbcComponentRelations" Value="EbcComponentRelations" />
				<asp:ListItem Text="EbcComponentRelationTypes" Value="EbcComponentRelationTypes" />
				<asp:ListItem Text="EbcComponents" Value="EbcComponents" />
				<asp:ListItem Text="EbcComponentTypes" Value="EbcComponentTypes" />
				<asp:ListItem Text="EbcDataLocations" Value="EbcDataLocations" />
				<asp:ListItem Text="EbcDataLog" Value="EbcDataLog" />
				<asp:ListItem Text="EbcDefaultStates" Value="EbcDefaultStates" />
				<asp:ListItem Text="EbcDefaultTypes" Value="EbcDefaultTypes" />
				<asp:ListItem Text="EbcDeleteActions" Value="EbcDeleteActions" />
				<asp:ListItem Text="EbcDeletes" Value="EbcDeletes" />
				<asp:ListItem Text="EbcGroups" Value="EbcGroups" />
				<asp:ListItem Text="EbcPropRelations" Value="EbcPropRelations" />
				<asp:ListItem Text="EbcPropRelationStates" Value="EbcPropRelationStates" />
				<asp:ListItem Text="EbcPropRelationTypes" Value="EbcPropRelationTypes" />
				<asp:ListItem Text="EbcProps" Value="EbcProps" />
				<asp:ListItem Text="EbcPropTypes" Value="EbcPropTypes" />
				<asp:ListItem Text="EbcUndoData" Value="EbcUndoData" />
				<asp:ListItem Text="EBL001" Value="EBL001" />
				<asp:ListItem Text="EmMidaSynchronizationLog" Value="EmMidaSynchronizationLog" />
				<asp:ListItem Text="EmployeePlanning" Value="EmployeePlanning" />
				<asp:ListItem Text="EmployeePlanningTypes" Value="EmployeePlanningTypes" />
				<asp:ListItem Text="Employees" Value="Employees" />
				<asp:ListItem Text="EmployeeTypes" Value="EmployeeTypes" />
				<asp:ListItem Text="EmployeeWorkcenters" Value="EmployeeWorkcenters" />
				<asp:ListItem Text="EmploymentAgencies" Value="EmploymentAgencies" />
				<asp:ListItem Text="EmploymentCLAs" Value="EmploymentCLAs" />
				<asp:ListItem Text="EmploymentComponents" Value="EmploymentComponents" />
				<asp:ListItem Text="EmploymentContractFlexPhases" Value="EmploymentContractFlexPhases" />
				<asp:ListItem Text="EmploymentContractReasons" Value="EmploymentContractReasons" />
				<asp:ListItem Text="EmploymentContracts" Value="EmploymentContracts" />
				<asp:ListItem Text="EmploymentContractTypes" Value="EmploymentContractTypes" />
				<asp:ListItem Text="EmploymentEndReasons" Value="EmploymentEndReasons" />
				<asp:ListItem Text="EmploymentMutationTypes" Value="EmploymentMutationTypes" />
				<asp:ListItem Text="EmploymentOrganizations" Value="EmploymentOrganizations" />
				<asp:ListItem Text="EmploymentProbationPeriods" Value="EmploymentProbationPeriods" />
				<asp:ListItem Text="Employments" Value="Employments" />
				<asp:ListItem Text="EmploymentSalaries" Value="EmploymentSalaries" />
				<asp:ListItem Text="EmploymentSalaryAmountTypes" Value="EmploymentSalaryAmountTypes" />
				<asp:ListItem Text="EmploymentSalaryTypes" Value="EmploymentSalaryTypes" />
				<asp:ListItem Text="EncryptionSalts" Value="EncryptionSalts" />
				<asp:ListItem Text="ErrorLog" Value="ErrorLog" />
				<asp:ListItem Text="ExactModules" Value="ExactModules" />
				<asp:ListItem Text="ExchangeRates" Value="ExchangeRates" />
				<asp:ListItem Text="ExchangeRateTypes" Value="ExchangeRateTypes" />
				<asp:ListItem Text="ExternalReferences" Value="ExternalReferences" />
				<asp:ListItem Text="ExternalReferenceTypes" Value="ExternalReferenceTypes" />
				<asp:ListItem Text="FeatureSetBatchAssignments" Value="FeatureSetBatchAssignments" />
				<asp:ListItem Text="FeatureSetFeatures" Value="FeatureSetFeatures" />
				<asp:ListItem Text="FeatureSets" Value="FeatureSets" />
				<asp:ListItem Text="FinancialPeriods" Value="FinancialPeriods" />
				<asp:ListItem Text="FinancialStatementLines" Value="FinancialStatementLines" />
				<asp:ListItem Text="FinancialStatements" Value="FinancialStatements" />
				<asp:ListItem Text="FinancialStatementSources" Value="FinancialStatementSources" />
				<asp:ListItem Text="FinancialStatementTypes" Value="FinancialStatementTypes" />
				<asp:ListItem Text="FirstAppUsage" Value="FirstAppUsage" />
				<asp:ListItem Text="FirstAppUsagePerDivision" Value="FirstAppUsagePerDivision" />
				<asp:ListItem Text="FirstDataBankResponseCodeActions" Value="FirstDataBankResponseCodeActions" />
				<asp:ListItem Text="FirstDataBankResponseCodes" Value="FirstDataBankResponseCodes" />
				<asp:ListItem Text="FirstDataBankResponseCodeTypes" Value="FirstDataBankResponseCodeTypes" />
				<asp:ListItem Text="FirstDataTransactionResponseCodes" Value="FirstDataTransactionResponseCodes" />
				<asp:ListItem Text="FirstDataWebServiceErrorCodes" Value="FirstDataWebServiceErrorCodes" />
				<asp:ListItem Text="FixedEntries" Value="FixedEntries" />
				<asp:ListItem Text="FixedFields" Value="FixedFields" />
				<asp:ListItem Text="ForecastTypes" Value="ForecastTypes" />
				<asp:ListItem Text="ForumRanks" Value="ForumRanks" />
				<asp:ListItem Text="FreeFieldDivisions" Value="FreeFieldDivisions" />
				<asp:ListItem Text="FreeFields" Value="FreeFields" />
				<asp:ListItem Text="FreeNumbers" Value="FreeNumbers" />
				<asp:ListItem Text="FullTextHelpWords" Value="FullTextHelpWords" />
				<asp:ListItem Text="FullTextWords" Value="FullTextWords" />
				<asp:ListItem Text="FunctionPointRights" Value="FunctionPointRights" />
				<asp:ListItem Text="FunctionPoints" Value="FunctionPoints" />
				<asp:ListItem Text="FusionChartTypes" Value="FusionChartTypes" />
				<asp:ListItem Text="GBANationalities" Value="GBANationalities" />
				<asp:ListItem Text="GLAccountLinkCostCenters" Value="GLAccountLinkCostCenters" />
				<asp:ListItem Text="GLAccountLinkCostUnits" Value="GLAccountLinkCostUnits" />
				<asp:ListItem Text="GLAccounts" Value="GLAccounts" />
				<asp:ListItem Text="GLAccountTaxonomyMappings" Value="GLAccountTaxonomyMappings" />
				<asp:ListItem Text="GLAccountTypeClasses" Value="GLAccountTypeClasses" />
				<asp:ListItem Text="GLAccountTypes" Value="GLAccountTypes" />
				<asp:ListItem Text="GLTaxTotals" Value="GLTaxTotals" />
				<asp:ListItem Text="GLTaxTotalTypes" Value="GLTaxTotalTypes" />
				<asp:ListItem Text="GLTransactionDeferredLineTypes" Value="GLTransactionDeferredLineTypes" />
				<asp:ListItem Text="GLTransactionDocuments" Value="GLTransactionDocuments" />
				<asp:ListItem Text="GLTransactionExtensions" Value="GLTransactionExtensions" />
				<asp:ListItem Text="GLTransactionExternalLinks" Value="GLTransactionExternalLinks" />
				<asp:ListItem Text="GLTransactionLinks" Value="GLTransactionLinks" />
				<asp:ListItem Text="GLTransactions" Value="GLTransactions" />
				<asp:ListItem Text="GLTransactionSources" Value="GLTransactionSources" />
				<asp:ListItem Text="GLTransactionStatus" Value="GLTransactionStatus" />
				<asp:ListItem Text="GLTransactionTypes" Value="GLTransactionTypes" />
				<asp:ListItem Text="GroupedStockTransactions" Value="GroupedStockTransactions" />
				<asp:ListItem Text="GuidRelations" Value="GuidRelations" />
				<asp:ListItem Text="HelpItemPhrases" Value="HelpItemPhrases" />
				<asp:ListItem Text="HelpItems" Value="HelpItems" />
				<asp:ListItem Text="HelpItemTypes" Value="HelpItemTypes" />
				<asp:ListItem Text="HelpLog" Value="HelpLog" />
				<asp:ListItem Text="HelpPhrases" Value="HelpPhrases" />
				<asp:ListItem Text="HourPlanning" Value="HourPlanning" />
				<asp:ListItem Text="HRMAbsenceTypes" Value="HRMAbsenceTypes" />
				<asp:ListItem Text="HubSpotStatus" Value="HubSpotStatus" />
				<asp:ListItem Text="IllnessCauses" Value="IllnessCauses" />
				<asp:ListItem Text="IllnessContactMoments" Value="IllnessContactMoments" />
				<asp:ListItem Text="IllnessKinds" Value="IllnessKinds" />
				<asp:ListItem Text="IllnessProgressions" Value="IllnessProgressions" />
				<asp:ListItem Text="IllnessRegistrations" Value="IllnessRegistrations" />
				<asp:ListItem Text="IncidentMessageContent" Value="IncidentMessageContent" />
				<asp:ListItem Text="IncidentMessages" Value="IncidentMessages" />
				<asp:ListItem Text="IndexStatistics" Value="IndexStatistics" />
				<asp:ListItem Text="IndexStatisticsHistory" Value="IndexStatisticsHistory" />
				<asp:ListItem Text="IndicatorEntities" Value="IndicatorEntities" />
				<asp:ListItem Text="Indicators" Value="Indicators" />
				<asp:ListItem Text="IndicatorSeverities" Value="IndicatorSeverities" />
				<asp:ListItem Text="IndicatorSignals" Value="IndicatorSignals" />
				<asp:ListItem Text="IndicatorStates" Value="IndicatorStates" />
				<asp:ListItem Text="IndicatorStateStatus" Value="IndicatorStateStatus" />
				<asp:ListItem Text="IndicatorTriggers" Value="IndicatorTriggers" />
				<asp:ListItem Text="IndicatorTypeClassifications" Value="IndicatorTypeClassifications" />
				<asp:ListItem Text="IndicatorTypeFeatureSets" Value="IndicatorTypeFeatureSets" />
				<asp:ListItem Text="IndicatorTypes" Value="IndicatorTypes" />
				<asp:ListItem Text="IndicatorTypeSubClassifications" Value="IndicatorTypeSubClassifications" />
				<asp:ListItem Text="IndicatorValidationAccountTypes" Value="IndicatorValidationAccountTypes" />
				<asp:ListItem Text="IndicatorValidationFinPeriods" Value="IndicatorValidationFinPeriods" />
				<asp:ListItem Text="IndicatorValidationOperators" Value="IndicatorValidationOperators" />
				<asp:ListItem Text="IndicatorValidations" Value="IndicatorValidations" />
				<asp:ListItem Text="InternalDiscountTypes" Value="InternalDiscountTypes" />
				<asp:ListItem Text="IntraStatAreas" Value="IntraStatAreas" />
				<asp:ListItem Text="IntraStatDeliveryTerms" Value="IntraStatDeliveryTerms" />
				<asp:ListItem Text="IntraStatStatisticalNumbers" Value="IntraStatStatisticalNumbers" />
				<asp:ListItem Text="IntraStatSystems" Value="IntraStatSystems" />
				<asp:ListItem Text="IntrastatTransactions" Value="IntrastatTransactions" />
				<asp:ListItem Text="IntraStatTransactionsA" Value="IntraStatTransactionsA" />
				<asp:ListItem Text="IntraStatTransactionsB" Value="IntraStatTransactionsB" />
				<asp:ListItem Text="IntraStatTransportMethods" Value="IntraStatTransportMethods" />
				<asp:ListItem Text="IntraStatUnits" Value="IntraStatUnits" />
				<asp:ListItem Text="IntuitIntegrationActions" Value="IntuitIntegrationActions" />
				<asp:ListItem Text="IntuitIntegrationDatabaseTypes" Value="IntuitIntegrationDatabaseTypes" />
				<asp:ListItem Text="IntuitIntegrationEntries" Value="IntuitIntegrationEntries" />
				<asp:ListItem Text="IntuitIntegrationGLAccountSubtypes" Value="IntuitIntegrationGLAccountSubtypes" />
				<asp:ListItem Text="IntuitIntegrationGLAccountTypes" Value="IntuitIntegrationGLAccountTypes" />
				<asp:ListItem Text="IntuitIntegrationItemTypes" Value="IntuitIntegrationItemTypes" />
				<asp:ListItem Text="IntuitIntegrationSources" Value="IntuitIntegrationSources" />
				<asp:ListItem Text="IntuitIntegrationStatuses" Value="IntuitIntegrationStatuses" />
				<asp:ListItem Text="InventoryValuationMethods" Value="InventoryValuationMethods" />
				<asp:ListItem Text="InventoryValuationSubMethods" Value="InventoryValuationSubMethods" />
				<asp:ListItem Text="InvestmentDeductions" Value="InvestmentDeductions" />
				<asp:ListItem Text="InvitationLog" Value="InvitationLog" />
				<asp:ListItem Text="InvoicePlanning" Value="InvoicePlanning" />
				<asp:ListItem Text="InvolvedAccounts" Value="InvolvedAccounts" />
				<asp:ListItem Text="InvolvedUserRoles" Value="InvolvedUserRoles" />
				<asp:ListItem Text="InvolvedUsers" Value="InvolvedUsers" />
				<asp:ListItem Text="ItemAccounts" Value="ItemAccounts" />
				<asp:ListItem Text="ItemAccountTypes" Value="ItemAccountTypes" />
				<asp:ListItem Text="ItemClasses" Value="ItemClasses" />
				<asp:ListItem Text="ItemClassNames" Value="ItemClassNames" />
				<asp:ListItem Text="ItemExtensions" Value="ItemExtensions" />
				<asp:ListItem Text="ItemFeatureSets" Value="ItemFeatureSets" />
				<asp:ListItem Text="ItemGroups" Value="ItemGroups" />
				<asp:ListItem Text="ItemMaterials" Value="ItemMaterials" />
				<asp:ListItem Text="ItemNumberFeatureSets" Value="ItemNumberFeatureSets" />
				<asp:ListItem Text="ItemNumbers" Value="ItemNumbers" />
				<asp:ListItem Text="ItemPriceCategories" Value="ItemPriceCategories" />
				<asp:ListItem Text="ItemPrices" Value="ItemPrices" />
				<asp:ListItem Text="ItemPriceTypes" Value="ItemPriceTypes" />
				<asp:ListItem Text="ItemRelationRelations" Value="ItemRelationRelations" />
				<asp:ListItem Text="ItemRelations" Value="ItemRelations" />
				<asp:ListItem Text="ItemRelationTypes" Value="ItemRelationTypes" />
				<asp:ListItem Text="ItemRoutingSteps" Value="ItemRoutingSteps" />
				<asp:ListItem Text="Items" Value="Items" />
				<asp:ListItem Text="ItemStockTurnoverValues" Value="ItemStockTurnoverValues" />
				<asp:ListItem Text="ItemVersions" Value="ItemVersions" />
				<asp:ListItem Text="ItemVersionStatus" Value="ItemVersionStatus" />
				<asp:ListItem Text="ItemVersionTypes" Value="ItemVersionTypes" />
				<asp:ListItem Text="ItemWarehouses" Value="ItemWarehouses" />
				<asp:ListItem Text="JobGroups" Value="JobGroups" />
				<asp:ListItem Text="Jobtitles" Value="Jobtitles" />
				<asp:ListItem Text="Journals" Value="Journals" />
				<asp:ListItem Text="JournalTypes" Value="JournalTypes" />
				<asp:ListItem Text="KeySets" Value="KeySets" />
				<asp:ListItem Text="KnownErrors" Value="KnownErrors" />
				<asp:ListItem Text="KnownErrorStatus" Value="KnownErrorStatus" />
				<asp:ListItem Text="LanguageNumbers" Value="LanguageNumbers" />
				<asp:ListItem Text="Languages" Value="Languages" />
				<asp:ListItem Text="LastEvents" Value="LastEvents" />
				<asp:ListItem Text="LastEventTypes" Value="LastEventTypes" />
				<asp:ListItem Text="LayoutLinks" Value="LayoutLinks" />
				<asp:ListItem Text="Layouts" Value="Layouts" />
				<asp:ListItem Text="LayoutStatus" Value="LayoutStatus" />
				<asp:ListItem Text="LayoutTypes" Value="LayoutTypes" />
				<asp:ListItem Text="LeadHistory" Value="LeadHistory" />
				<asp:ListItem Text="LeadRatings" Value="LeadRatings" />
				<asp:ListItem Text="Leads" Value="Leads" />
				<asp:ListItem Text="LeadSources" Value="LeadSources" />
				<asp:ListItem Text="LeadStages" Value="LeadStages" />
				<asp:ListItem Text="LeadStatus" Value="LeadStatus" />
				<asp:ListItem Text="LengthUnits" Value="LengthUnits" />
				<asp:ListItem Text="LongRunningQueries" Value="LongRunningQueries" />
				<asp:ListItem Text="Mail2EOLActivityTypes" Value="Mail2EOLActivityTypes" />
				<asp:ListItem Text="Mail2EOLLog" Value="Mail2EOLLog" />
				<asp:ListItem Text="MailboxConnectionActivities" Value="MailboxConnectionActivities" />
				<asp:ListItem Text="Mailboxes" Value="Mailboxes" />
				<asp:ListItem Text="MailboxLinkedEmailAllowedSenders" Value="MailboxLinkedEmailAllowedSenders" />
				<asp:ListItem Text="MailboxLinkedEmails" Value="MailboxLinkedEmails" />
				<asp:ListItem Text="MailboxTypes" Value="MailboxTypes" />
				<asp:ListItem Text="MailMessageAttachments" Value="MailMessageAttachments" />
				<asp:ListItem Text="MailMessageOperations" Value="MailMessageOperations" />
				<asp:ListItem Text="MailMessages" Value="MailMessages" />
				<asp:ListItem Text="MailMessagesLog" Value="MailMessagesLog" />
				<asp:ListItem Text="MailMessageStatus" Value="MailMessageStatus" />
				<asp:ListItem Text="MailMessageTypes" Value="MailMessageTypes" />
				<asp:ListItem Text="MailMonitoringLog" Value="MailMonitoringLog" />
				<asp:ListItem Text="MailMonitoringRejectReasons" Value="MailMonitoringRejectReasons" />
				<asp:ListItem Text="MailMonitoringUsers" Value="MailMonitoringUsers" />
				<asp:ListItem Text="ManufacturingTimeTypes" Value="ManufacturingTimeTypes" />
				<asp:ListItem Text="MaritalStatus" Value="MaritalStatus" />
				<asp:ListItem Text="MarketingListContacts" Value="MarketingListContacts" />
				<asp:ListItem Text="MarketingLists" Value="MarketingLists" />
				<asp:ListItem Text="MaterialCostSources" Value="MaterialCostSources" />
				<asp:ListItem Text="MaterialRequirements" Value="MaterialRequirements" />
				<asp:ListItem Text="MaterialRequirementTypes" Value="MaterialRequirementTypes" />
				<asp:ListItem Text="MaterialTypes" Value="MaterialTypes" />
				<asp:ListItem Text="Messages" Value="Messages" />
				<asp:ListItem Text="MessageStatus" Value="MessageStatus" />
				<asp:ListItem Text="MonthlyAppUsage" Value="MonthlyAppUsage" />
				<asp:ListItem Text="NationalHolidays" Value="NationalHolidays" />
				<asp:ListItem Text="OAuthApplicationTypes" Value="OAuthApplicationTypes" />
				<asp:ListItem Text="OAuthClients" Value="OAuthClients" />
				<asp:ListItem Text="OAuthClientUsers" Value="OAuthClientUsers" />
				<asp:ListItem Text="OAuthKeyStore" Value="OAuthKeyStore" />
				<asp:ListItem Text="OAuthNonceStore" Value="OAuthNonceStore" />
				<asp:ListItem Text="OfficialInvoiceNumbers" Value="OfficialInvoiceNumbers" />
				<asp:ListItem Text="OfficialInvoiceStatus" Value="OfficialInvoiceStatus" />
				<asp:ListItem Text="OperationResources" Value="OperationResources" />
				<asp:ListItem Text="OperationRunMethods" Value="OperationRunMethods" />
				<asp:ListItem Text="Operations" Value="Operations" />
				<asp:ListItem Text="OperationStatus" Value="OperationStatus" />
				<asp:ListItem Text="Opportunities" Value="Opportunities" />
				<asp:ListItem Text="OpportunityContacts" Value="OpportunityContacts" />
				<asp:ListItem Text="OpportunityHistory" Value="OpportunityHistory" />
				<asp:ListItem Text="OpportunityItems" Value="OpportunityItems" />
				<asp:ListItem Text="OpportunityStages" Value="OpportunityStages" />
				<asp:ListItem Text="OpportunityStatus" Value="OpportunityStatus" />
				<asp:ListItem Text="OtpDeliveries" Value="OtpDeliveries" />
				<asp:ListItem Text="OtpDomains" Value="OtpDomains" />
				<asp:ListItem Text="OtpMessages" Value="OtpMessages" />
				<asp:ListItem Text="OtpMessageTypes" Value="OtpMessageTypes" />
				<asp:ListItem Text="OtpStatus" Value="OtpStatus" />
				<asp:ListItem Text="OtpStatusInformation" Value="OtpStatusInformation" />
				<asp:ListItem Text="PartnerKeys" Value="PartnerKeys" />
				<asp:ListItem Text="PartnerKeyStatisticActions" Value="PartnerKeyStatisticActions" />
				<asp:ListItem Text="PartnerKeyStatistics" Value="PartnerKeyStatistics" />
				<asp:ListItem Text="PaymentTermExtensions" Value="PaymentTermExtensions" />
				<asp:ListItem Text="PaymentTerms" Value="PaymentTerms" />
				<asp:ListItem Text="PaymentTermTemplates" Value="PaymentTermTemplates" />
				<asp:ListItem Text="PayrollAuthorizePeriods" Value="PayrollAuthorizePeriods" />
				<asp:ListItem Text="PayrollClasses" Value="PayrollClasses" />
				<asp:ListItem Text="PayrollClassNames" Value="PayrollClassNames" />
				<asp:ListItem Text="PayrollCLAUpdateStatus" Value="PayrollCLAUpdateStatus" />
				<asp:ListItem Text="PayrollCompCriterionInputs" Value="PayrollCompCriterionInputs" />
				<asp:ListItem Text="PayrollComponentChanges" Value="PayrollComponentChanges" />
				<asp:ListItem Text="PayrollComponentCriteria" Value="PayrollComponentCriteria" />
				<asp:ListItem Text="PayrollComponentGroupAgencies" Value="PayrollComponentGroupAgencies" />
				<asp:ListItem Text="PayrollComponentGroups" Value="PayrollComponentGroups" />
				<asp:ListItem Text="PayrollComponentHistoryPeriods" Value="PayrollComponentHistoryPeriods" />
				<asp:ListItem Text="PayrollComponentInputs" Value="PayrollComponentInputs" />
				<asp:ListItem Text="PayrollComponentInputTypes" Value="PayrollComponentInputTypes" />
				<asp:ListItem Text="PayrollComponentOutputs" Value="PayrollComponentOutputs" />
				<asp:ListItem Text="PayrollComponents" Value="PayrollComponents" />
				<asp:ListItem Text="PayrollComponentStatus" Value="PayrollComponentStatus" />
				<asp:ListItem Text="PayrollComponentTypes" Value="PayrollComponentTypes" />
				<asp:ListItem Text="PayrollCorrections" Value="PayrollCorrections" />
				<asp:ListItem Text="PayrollCorrectionSources" Value="PayrollCorrectionSources" />
				<asp:ListItem Text="PayrollDeclarations" Value="PayrollDeclarations" />
				<asp:ListItem Text="PayrollEntries" Value="PayrollEntries" />
				<asp:ListItem Text="PayrollEntryFieldTypes" Value="PayrollEntryFieldTypes" />
				<asp:ListItem Text="PayrollEntryTypes" Value="PayrollEntryTypes" />
				<asp:ListItem Text="PayrollFieldDefinitions" Value="PayrollFieldDefinitions" />
				<asp:ListItem Text="PayrollFieldDefinitionTypes" Value="PayrollFieldDefinitionTypes" />
				<asp:ListItem Text="PayrollFieldDefinitionValues" Value="PayrollFieldDefinitionValues" />
				<asp:ListItem Text="PayrollGLLinks" Value="PayrollGLLinks" />
				<asp:ListItem Text="PayrollGLTransactions" Value="PayrollGLTransactions" />
				<asp:ListItem Text="PayrollPeriodFrequencies" Value="PayrollPeriodFrequencies" />
				<asp:ListItem Text="PayrollPeriods" Value="PayrollPeriods" />
				<asp:ListItem Text="PayrollProcessReports" Value="PayrollProcessReports" />
				<asp:ListItem Text="PayrollProcessYearReports" Value="PayrollProcessYearReports" />
				<asp:ListItem Text="PayrollReportCategories" Value="PayrollReportCategories" />
				<asp:ListItem Text="PayrollReports" Value="PayrollReports" />
				<asp:ListItem Text="PayrollReportSubCategories" Value="PayrollReportSubCategories" />
				<asp:ListItem Text="PayrollRuns" Value="PayrollRuns" />
				<asp:ListItem Text="PayrollRunTypes" Value="PayrollRunTypes" />
				<asp:ListItem Text="PayrollSlipBoxItems" Value="PayrollSlipBoxItems" />
				<asp:ListItem Text="PayrollSlipBoxTypes" Value="PayrollSlipBoxTypes" />
				<asp:ListItem Text="PayrollSlipTotalTypes" Value="PayrollSlipTotalTypes" />
				<asp:ListItem Text="PayrollSubtotalLinks" Value="PayrollSubtotalLinks" />
				<asp:ListItem Text="PayrollTableDetails" Value="PayrollTableDetails" />
				<asp:ListItem Text="PayrollTableDimTypes" Value="PayrollTableDimTypes" />
				<asp:ListItem Text="PayrollTables" Value="PayrollTables" />
				<asp:ListItem Text="PayrollTableTypes" Value="PayrollTableTypes" />
				<asp:ListItem Text="PayrollTransactions" Value="PayrollTransactions" />
				<asp:ListItem Text="PayrollTransactionStatus" Value="PayrollTransactionStatus" />
				<asp:ListItem Text="PayrollTransactionTypes" Value="PayrollTransactionTypes" />
				<asp:ListItem Text="PayrollWizComponents" Value="PayrollWizComponents" />
				<asp:ListItem Text="PayrollYearReports" Value="PayrollYearReports" />
				<asp:ListItem Text="PerformanceCounterLog" Value="PerformanceCounterLog" />
				<asp:ListItem Text="PerformanceCounterMeasurements" Value="PerformanceCounterMeasurements" />
				<asp:ListItem Text="PerformanceCounters" Value="PerformanceCounters" />
				<asp:ListItem Text="PerformanceCountersRegisterd" Value="PerformanceCountersRegisterd" />
				<asp:ListItem Text="PerformanceHistory" Value="PerformanceHistory" />
				<asp:ListItem Text="PeriodProcessReports" Value="PeriodProcessReports" />
				<asp:ListItem Text="PeriodReportFeatureSets" Value="PeriodReportFeatureSets" />
				<asp:ListItem Text="PeriodReports" Value="PeriodReports" />
				<asp:ListItem Text="PersonRelationshipFixedTypes" Value="PersonRelationshipFixedTypes" />
				<asp:ListItem Text="PersonRelationships" Value="PersonRelationships" />
				<asp:ListItem Text="PersonRelationshipTypes" Value="PersonRelationshipTypes" />
				<asp:ListItem Text="Persons" Value="Persons" />
				<asp:ListItem Text="PickingListLines" Value="PickingListLines" />
				<asp:ListItem Text="PickingLists" Value="PickingLists" />
				<asp:ListItem Text="PickingListStatus" Value="PickingListStatus" />
				<asp:ListItem Text="PictureRefs" Value="PictureRefs" />
				<asp:ListItem Text="Pictures" Value="Pictures" />
				<asp:ListItem Text="PlannedAssemblyOrders" Value="PlannedAssemblyOrders" />
				<asp:ListItem Text="PlannedOrderTypes" Value="PlannedOrderTypes" />
				<asp:ListItem Text="PlannedPurchaseOrders" Value="PlannedPurchaseOrders" />
				<asp:ListItem Text="PlanningActions" Value="PlanningActions" />
				<asp:ListItem Text="PoortwachterPhases" Value="PoortwachterPhases" />
				<asp:ListItem Text="PracticeManagementExternalSolutions" Value="PracticeManagementExternalSolutions" />
				<asp:ListItem Text="PriceListEntities" Value="PriceListEntities" />
				<asp:ListItem Text="PriceListRanges" Value="PriceListRanges" />
				<asp:ListItem Text="PriceListRangeTypes" Value="PriceListRangeTypes" />
				<asp:ListItem Text="PriceLists" Value="PriceLists" />
				<asp:ListItem Text="PriceListTypes" Value="PriceListTypes" />
				<asp:ListItem Text="ProcessJobAttachments" Value="ProcessJobAttachments" />
				<asp:ListItem Text="ProcessJobDetails" Value="ProcessJobDetails" />
				<asp:ListItem Text="ProcessJobProcessors" Value="ProcessJobProcessors" />
				<asp:ListItem Text="ProcessJobs" Value="ProcessJobs" />
				<asp:ListItem Text="ProcessJobStatus" Value="ProcessJobStatus" />
				<asp:ListItem Text="ProcessJobTypes" Value="ProcessJobTypes" />
				<asp:ListItem Text="ProcessLog" Value="ProcessLog" />
				<asp:ListItem Text="ProcessStatus" Value="ProcessStatus" />
				<asp:ListItem Text="ProcessStatusNames" Value="ProcessStatusNames" />
				<asp:ListItem Text="ProcessStatusTypes" Value="ProcessStatusTypes" />
				<asp:ListItem Text="ProductionAreas" Value="ProductionAreas" />
				<asp:ListItem Text="ProjectAccounts" Value="ProjectAccounts" />
				<asp:ListItem Text="ProjectBudgets" Value="ProjectBudgets" />
				<asp:ListItem Text="ProjectBudgetTypes" Value="ProjectBudgetTypes" />
				<asp:ListItem Text="ProjectClassifications" Value="ProjectClassifications" />
				<asp:ListItem Text="ProjectInvolvement" Value="ProjectInvolvement" />
				<asp:ListItem Text="ProjectInvolvementAccounts" Value="ProjectInvolvementAccounts" />
				<asp:ListItem Text="ProjectInvolvementEmployees" Value="ProjectInvolvementEmployees" />
				<asp:ListItem Text="ProjectPlanning" Value="ProjectPlanning" />
				<asp:ListItem Text="ProjectPlanningBGTStatus" Value="ProjectPlanningBGTStatus" />
				<asp:ListItem Text="ProjectPlanningCalendarTypes" Value="ProjectPlanningCalendarTypes" />
				<asp:ListItem Text="ProjectPlanningCommunicationErrorCode" Value="ProjectPlanningCommunicationErrorCode" />
				<asp:ListItem Text="ProjectPlanningCommunicationErrorLog" Value="ProjectPlanningCommunicationErrorLog" />
				<asp:ListItem Text="ProjectPlanningCommunicationErrorStatus" Value="ProjectPlanningCommunicationErrorStatus" />
				<asp:ListItem Text="ProjectPlanningCommunicationEWS" Value="ProjectPlanningCommunicationEWS" />
				<asp:ListItem Text="ProjectPlanningCommunicationOffice365" Value="ProjectPlanningCommunicationOffice365" />
				<asp:ListItem Text="ProjectPlanningMutations" Value="ProjectPlanningMutations" />
				<asp:ListItem Text="ProjectPlanningRecurring" Value="ProjectPlanningRecurring" />
				<asp:ListItem Text="ProjectPlanningStatus" Value="ProjectPlanningStatus" />
				<asp:ListItem Text="ProjectPlanningTypes" Value="ProjectPlanningTypes" />
				<asp:ListItem Text="ProjectPrepaidTypes" Value="ProjectPrepaidTypes" />
				<asp:ListItem Text="ProjectRebillRestrictions" Value="ProjectRebillRestrictions" />
				<asp:ListItem Text="ProjectRestrictions" Value="ProjectRestrictions" />
				<asp:ListItem Text="Projects" Value="Projects" />
				<asp:ListItem Text="ProjectTerms" Value="ProjectTerms" />
				<asp:ListItem Text="ProjectTypes" Value="ProjectTypes" />
				<asp:ListItem Text="ProjectWBS" Value="ProjectWBS" />
				<asp:ListItem Text="ProjectWBSTemplateLines" Value="ProjectWBSTemplateLines" />
				<asp:ListItem Text="ProjectWBSTemplates" Value="ProjectWBSTemplates" />
				<asp:ListItem Text="ProjectWBSTypes" Value="ProjectWBSTypes" />
				<asp:ListItem Text="ProposedEntries" Value="ProposedEntries" />
				<asp:ListItem Text="ProposedEntryLines" Value="ProposedEntryLines" />
				<asp:ListItem Text="PurchaseInvoicePlanning" Value="PurchaseInvoicePlanning" />
				<asp:ListItem Text="PurchaseInvoicePlanningSources" Value="PurchaseInvoicePlanningSources" />
				<asp:ListItem Text="PurchaseInvoicePlanningStatus" Value="PurchaseInvoicePlanningStatus" />
				<asp:ListItem Text="PurchaseOrderExtensions" Value="PurchaseOrderExtensions" />
				<asp:ListItem Text="PurchaseOrders" Value="PurchaseOrders" />
				<asp:ListItem Text="PurchaseOrderSources" Value="PurchaseOrderSources" />
				<asp:ListItem Text="PurchaseOrderStatus" Value="PurchaseOrderStatus" />
				<asp:ListItem Text="PurchaseOrderTypes" Value="PurchaseOrderTypes" />
				<asp:ListItem Text="PurchasePriceListPeriods" Value="PurchasePriceListPeriods" />
				<asp:ListItem Text="PurchasePriceLists" Value="PurchasePriceLists" />
				<asp:ListItem Text="PurchasePriceListSources" Value="PurchasePriceListSources" />
				<asp:ListItem Text="PurchaseTransactionExtensions" Value="PurchaseTransactionExtensions" />
				<asp:ListItem Text="PurchaseTransactions" Value="PurchaseTransactions" />
				<asp:ListItem Text="PurchaseTransactionSources" Value="PurchaseTransactionSources" />
				<asp:ListItem Text="PurchaseTransactionStatus" Value="PurchaseTransactionStatus" />
				<asp:ListItem Text="PurchaseTransactionTypes" Value="PurchaseTransactionTypes" />
				<asp:ListItem Text="PurchaseVolumeDiscountTables" Value="PurchaseVolumeDiscountTables" />
				<asp:ListItem Text="QueryPerformanceLog" Value="QueryPerformanceLog" />
				<asp:ListItem Text="QuotationMarkupTypes" Value="QuotationMarkupTypes" />
				<asp:ListItem Text="QuotationMaterials" Value="QuotationMaterials" />
				<asp:ListItem Text="QuotationQuantities" Value="QuotationQuantities" />
				<asp:ListItem Text="QuotationRoutingSteps" Value="QuotationRoutingSteps" />
				<asp:ListItem Text="Quotations" Value="Quotations" />
				<asp:ListItem Text="QuotationSources" Value="QuotationSources" />
				<asp:ListItem Text="QuotationStatus" Value="QuotationStatus" />
				<asp:ListItem Text="QuotationTypes" Value="QuotationTypes" />
				<asp:ListItem Text="ReasonCodes" Value="ReasonCodes" />
				<asp:ListItem Text="ReasonCodeTypes" Value="ReasonCodeTypes" />
				<asp:ListItem Text="ReminderItems" Value="ReminderItems" />
				<asp:ListItem Text="RepInternalYearStatements" Value="RepInternalYearStatements" />
				<asp:ListItem Text="ReportColumnTypes" Value="ReportColumnTypes" />
				<asp:ListItem Text="ReportFilterTypes" Value="ReportFilterTypes" />
				<asp:ListItem Text="ReportingBalance" Value="ReportingBalance" />
				<asp:ListItem Text="ReportingStatistics" Value="ReportingStatistics" />
				<asp:ListItem Text="ReportTemplates" Value="ReportTemplates" />
				<asp:ListItem Text="ReportTemplateTypes" Value="ReportTemplateTypes" />
				<asp:ListItem Text="RequestActions" Value="RequestActions" />
				<asp:ListItem Text="RequestCategories" Value="RequestCategories" />
				<asp:ListItem Text="RequestFieldFeatureSets" Value="RequestFieldFeatureSets" />
				<asp:ListItem Text="RequestFieldOptionFeatureSets" Value="RequestFieldOptionFeatureSets" />
				<asp:ListItem Text="RequestFieldOptions" Value="RequestFieldOptions" />
				<asp:ListItem Text="RequestFields" Value="RequestFields" />
				<asp:ListItem Text="RequestPriorities" Value="RequestPriorities" />
				<asp:ListItem Text="Requests" Value="Requests" />
				<asp:ListItem Text="RequestStatus" Value="RequestStatus" />
				<asp:ListItem Text="RequestTypeExtenders" Value="RequestTypeExtenders" />
				<asp:ListItem Text="RequestTypeFeatureSets" Value="RequestTypeFeatureSets" />
				<asp:ListItem Text="RequestTypes" Value="RequestTypes" />
				<asp:ListItem Text="RestServices" Value="RestServices" />
				<asp:ListItem Text="RoleFeatureSets" Value="RoleFeatureSets" />
				<asp:ListItem Text="RoleGroups" Value="RoleGroups" />
				<asp:ListItem Text="RoleLevels" Value="RoleLevels" />
				<asp:ListItem Text="Roles" Value="Roles" />
				<asp:ListItem Text="RoutingStatus" Value="RoutingStatus" />
				<asp:ListItem Text="RoutingStepTypes" Value="RoutingStepTypes" />
				<asp:ListItem Text="SalesForecastDetails" Value="SalesForecastDetails" />
				<asp:ListItem Text="SalesForecastItems" Value="SalesForecastItems" />
				<asp:ListItem Text="SalesForecasts" Value="SalesForecasts" />
				<asp:ListItem Text="SalesInvoicePlanningSourceFeatureSets" Value="SalesInvoicePlanningSourceFeatureSets" />
				<asp:ListItem Text="SalesInvoicePlanningSources" Value="SalesInvoicePlanningSources" />
				<asp:ListItem Text="SalesInvoicePlanningStatus" Value="SalesInvoicePlanningStatus" />
				<asp:ListItem Text="SalesInvPlanningDestinations" Value="SalesInvPlanningDestinations" />
				<asp:ListItem Text="SalesOrderExtensions" Value="SalesOrderExtensions" />
				<asp:ListItem Text="SalesOrderPurchaseOrderLinks" Value="SalesOrderPurchaseOrderLinks" />
				<asp:ListItem Text="SalesOrders" Value="SalesOrders" />
				<asp:ListItem Text="SalesOrderSources" Value="SalesOrderSources" />
				<asp:ListItem Text="SalesOrderStatus" Value="SalesOrderStatus" />
				<asp:ListItem Text="SalesOrderTypes" Value="SalesOrderTypes" />
				<asp:ListItem Text="SalesTransactionExtensions" Value="SalesTransactionExtensions" />
				<asp:ListItem Text="SalesTransactions" Value="SalesTransactions" />
				<asp:ListItem Text="SalesTransactionSources" Value="SalesTransactionSources" />
				<asp:ListItem Text="SalesTransactionStatus" Value="SalesTransactionStatus" />
				<asp:ListItem Text="SalesTransactionTypes" Value="SalesTransactionTypes" />
				<asp:ListItem Text="SalesTypes" Value="SalesTypes" />
				<asp:ListItem Text="SBICodes" Value="SBICodes" />
				<asp:ListItem Text="ScheduleActivities" Value="ScheduleActivities" />
				<asp:ListItem Text="ScheduleEntries" Value="ScheduleEntries" />
				<asp:ListItem Text="Schedules" Value="Schedules" />
				<asp:ListItem Text="ScheduleTemplateDays" Value="ScheduleTemplateDays" />
				<asp:ListItem Text="ScheduleTemplates" Value="ScheduleTemplates" />
				<asp:ListItem Text="ScheduleTypes" Value="ScheduleTypes" />
				<asp:ListItem Text="SendingMethods" Value="SendingMethods" />
				<asp:ListItem Text="SepaDDMandatePaymentTypes" Value="SepaDDMandatePaymentTypes" />
				<asp:ListItem Text="SepaDDMandates" Value="SepaDDMandates" />
				<asp:ListItem Text="SepaDDMandateTypes" Value="SepaDDMandateTypes" />
				<asp:ListItem Text="SerialBatchNumberQuantities" Value="SerialBatchNumberQuantities" />
				<asp:ListItem Text="SerialBatchNumbers" Value="SerialBatchNumbers" />
				<asp:ListItem Text="SerialBatchNumberTypes" Value="SerialBatchNumberTypes" />
				<asp:ListItem Text="ServerGroupMappings" Value="ServerGroupMappings" />
				<asp:ListItem Text="ServerGroups" Value="ServerGroups" />
				<asp:ListItem Text="ServerMachines" Value="ServerMachines" />
				<asp:ListItem Text="SessionLog" Value="SessionLog" />
				<asp:ListItem Text="SessionLogHistory" Value="SessionLogHistory" />
				<asp:ListItem Text="Settings" Value="Settings" />
				<asp:ListItem Text="SetupUnits" Value="SetupUnits" />
				<asp:ListItem Text="ShipmentHeaders" Value="ShipmentHeaders" />
				<asp:ListItem Text="ShipmentPackages" Value="ShipmentPackages" />
				<asp:ListItem Text="ShipmentPackageTypes" Value="ShipmentPackageTypes" />
				<asp:ListItem Text="ShippingMethods" Value="ShippingMethods" />
				<asp:ListItem Text="ShopOrderMaterialPlans" Value="ShopOrderMaterialPlans" />
				<asp:ListItem Text="ShopOrderMaterialRealizations" Value="ShopOrderMaterialRealizations" />
				<asp:ListItem Text="ShopOrderMaterialStatus" Value="ShopOrderMaterialStatus" />
				<asp:ListItem Text="ShopOrderPurchasePlanning" Value="ShopOrderPurchasePlanning" />
				<asp:ListItem Text="ShopOrderPurchaseUnitPriceStatus" Value="ShopOrderPurchaseUnitPriceStatus" />
				<asp:ListItem Text="ShopOrderRoutingStepPlans" Value="ShopOrderRoutingStepPlans" />
				<asp:ListItem Text="ShopOrderRoutingStepRealizations" Value="ShopOrderRoutingStepRealizations" />
				<asp:ListItem Text="ShopOrderRoutingStepRealizationTypes" Value="ShopOrderRoutingStepRealizationTypes" />
				<asp:ListItem Text="ShopOrders" Value="ShopOrders" />
				<asp:ListItem Text="ShopOrderSources" Value="ShopOrderSources" />
				<asp:ListItem Text="ShopOrderStatus" Value="ShopOrderStatus" />
				<asp:ListItem Text="ShopOrderSubOrders" Value="ShopOrderSubOrders" />
				<asp:ListItem Text="ShopOrderTypes" Value="ShopOrderTypes" />
				<asp:ListItem Text="ShopPapers" Value="ShopPapers" />
				<asp:ListItem Text="SimplerInvoicingDefinitions" Value="SimplerInvoicingDefinitions" />
				<asp:ListItem Text="SqlScripts" Value="SqlScripts" />
				<asp:ListItem Text="SqlScriptStatus" Value="SqlScriptStatus" />
				<asp:ListItem Text="SqlScriptTypes" Value="SqlScriptTypes" />
				<asp:ListItem Text="StatisticsEntities" Value="StatisticsEntities" />
				<asp:ListItem Text="StockCounts" Value="StockCounts" />
				<asp:ListItem Text="StockCountSources" Value="StockCountSources" />
				<asp:ListItem Text="StockCountStatus" Value="StockCountStatus" />
				<asp:ListItem Text="StockEntries" Value="StockEntries" />
				<asp:ListItem Text="StockEntryStatus" Value="StockEntryStatus" />
				<asp:ListItem Text="StockEntryTypes" Value="StockEntryTypes" />
				<asp:ListItem Text="StockPlanning" Value="StockPlanning" />
				<asp:ListItem Text="StockPlanningStatus" Value="StockPlanningStatus" />
				<asp:ListItem Text="StockPlanningTypes" Value="StockPlanningTypes" />
				<asp:ListItem Text="StockPositions" Value="StockPositions" />
				<asp:ListItem Text="StockSerialBatchNumbers" Value="StockSerialBatchNumbers" />
				<asp:ListItem Text="StockTransactionLocations" Value="StockTransactionLocations" />
				<asp:ListItem Text="StockTransactions" Value="StockTransactions" />
				<asp:ListItem Text="StockTransactionSources" Value="StockTransactionSources" />
				<asp:ListItem Text="StockTransactionStatus" Value="StockTransactionStatus" />
				<asp:ListItem Text="StockTransactionTypeFeatureSets" Value="StockTransactionTypeFeatureSets" />
				<asp:ListItem Text="StockTransactionTypes" Value="StockTransactionTypes" />
				<asp:ListItem Text="StorageLocations" Value="StorageLocations" />
				<asp:ListItem Text="StorageLocationStockPositions" Value="StorageLocationStockPositions" />
				<asp:ListItem Text="StoredProcedures" Value="StoredProcedures" />
				<asp:ListItem Text="StyleSheets" Value="StyleSheets" />
				<asp:ListItem Text="SubscriptionChargeTypes" Value="SubscriptionChargeTypes" />
				<asp:ListItem Text="SubscriptionClassifications" Value="SubscriptionClassifications" />
				<asp:ListItem Text="SubscriptionLinks" Value="SubscriptionLinks" />
				<asp:ListItem Text="SubscriptionReasonCodes" Value="SubscriptionReasonCodes" />
				<asp:ListItem Text="SubscriptionRestrictions" Value="SubscriptionRestrictions" />
				<asp:ListItem Text="Subscriptions" Value="Subscriptions" />
				<asp:ListItem Text="SubscriptionTemplateLines" Value="SubscriptionTemplateLines" />
				<asp:ListItem Text="SubscriptionTemplates" Value="SubscriptionTemplates" />
				<asp:ListItem Text="SubscriptionTypes" Value="SubscriptionTypes" />
				<asp:ListItem Text="SupplierPaymentReportingIdTypes" Value="SupplierPaymentReportingIdTypes" />
				<asp:ListItem Text="SupplierPaymentReportingTypes" Value="SupplierPaymentReportingTypes" />
				<asp:ListItem Text="TaxCAOCodes" Value="TaxCAOCodes" />
				<asp:ListItem Text="TaxCarIncreaseCodes" Value="TaxCarIncreaseCodes" />
				<asp:ListItem Text="TaxComponentRates" Value="TaxComponentRates" />
				<asp:ListItem Text="TaxComponents" Value="TaxComponents" />
				<asp:ListItem Text="TaxContributionCreditCodes" Value="TaxContributionCreditCodes" />
				<asp:ListItem Text="TaxDeclarationPeriods" Value="TaxDeclarationPeriods" />
				<asp:ListItem Text="TaxEmploymentCodes" Value="TaxEmploymentCodes" />
				<asp:ListItem Text="TaxEmploymentEndFlexCodes" Value="TaxEmploymentEndFlexCodes" />
				<asp:ListItem Text="TaxIncomeCodes" Value="TaxIncomeCodes" />
				<asp:ListItem Text="TaxIncomeReductionCodes" Value="TaxIncomeReductionCodes" />
				<asp:ListItem Text="TaxIVPCodes" Value="TaxIVPCodes" />
				<asp:ListItem Text="Taxonomies" Value="Taxonomies" />
				<asp:ListItem Text="TaxonomyColumnMappings" Value="TaxonomyColumnMappings" />
				<asp:ListItem Text="TaxonomyElementChanges" Value="TaxonomyElementChanges" />
				<asp:ListItem Text="TaxonomyElements" Value="TaxonomyElements" />
				<asp:ListItem Text="TaxonomyImports" Value="TaxonomyImports" />
				<asp:ListItem Text="TaxonomyLabels" Value="TaxonomyLabels" />
				<asp:ListItem Text="TaxonomyLinkbases" Value="TaxonomyLinkbases" />
				<asp:ListItem Text="TaxonomyNamespaceChanges" Value="TaxonomyNamespaceChanges" />
				<asp:ListItem Text="TaxonomyNamespaceLinkBases" Value="TaxonomyNamespaceLinkBases" />
				<asp:ListItem Text="TaxonomyNamespaces" Value="TaxonomyNamespaces" />
				<asp:ListItem Text="TaxonomyPresentationRelations" Value="TaxonomyPresentationRelations" />
				<asp:ListItem Text="TaxonomyPresentationTrees" Value="TaxonomyPresentationTrees" />
				<asp:ListItem Text="TaxonomyReferences" Value="TaxonomyReferences" />
				<asp:ListItem Text="TaxonomyRelations" Value="TaxonomyRelations" />
				<asp:ListItem Text="TaxonomyTypes" Value="TaxonomyTypes" />
				<asp:ListItem Text="TaxonomyTypeValues" Value="TaxonomyTypeValues" />
				<asp:ListItem Text="TaxonomyVersionChanges" Value="TaxonomyVersionChanges" />
				<asp:ListItem Text="TaxonomyVersionNamespaces" Value="TaxonomyVersionNamespaces" />
				<asp:ListItem Text="TaxonomyVersions" Value="TaxonomyVersions" />
				<asp:ListItem Text="TaxPhaseFZCodes" Value="TaxPhaseFZCodes" />
				<asp:ListItem Text="TaxPremiumGroups" Value="TaxPremiumGroups" />
				<asp:ListItem Text="TaxReturnDetails" Value="TaxReturnDetails" />
				<asp:ListItem Text="TaxReturns" Value="TaxReturns" />
				<asp:ListItem Text="TaxReturnTypes" Value="TaxReturnTypes" />
				<asp:ListItem Text="TaxScheduleComponents" Value="TaxScheduleComponents" />
				<asp:ListItem Text="TaxSchedules" Value="TaxSchedules" />
				<asp:ListItem Text="TaxScheduleTypes" Value="TaxScheduleTypes" />
				<asp:ListItem Text="TaxSectors" Value="TaxSectors" />
				<asp:ListItem Text="TaxTableCodes" Value="TaxTableCodes" />
				<asp:ListItem Text="TaxTransactions" Value="TaxTransactions" />
				<asp:ListItem Text="TaxTransactionTypes" Value="TaxTransactionTypes" />
				<asp:ListItem Text="TemplateEntries" Value="TemplateEntries" />
				<asp:ListItem Text="TemplateEntryLines" Value="TemplateEntryLines" />
				<asp:ListItem Text="TemplateEntryLinks" Value="TemplateEntryLinks" />
				<asp:ListItem Text="TemplateEntryTransactions" Value="TemplateEntryTransactions" />
				<asp:ListItem Text="Templates" Value="Templates" />
				<asp:ListItem Text="Terms" Value="Terms" />
				<asp:ListItem Text="TimeCostTransactions" Value="TimeCostTransactions" />
				<asp:ListItem Text="TimeCostTransactionSources" Value="TimeCostTransactionSources" />
				<asp:ListItem Text="TimeCostTransactionStatus" Value="TimeCostTransactionStatus" />
				<asp:ListItem Text="TimeCostTransactionTypes" Value="TimeCostTransactionTypes" />
				<asp:ListItem Text="TimedTimeTransactions" Value="TimedTimeTransactions" />
				<asp:ListItem Text="TimedTimeTransactionSources" Value="TimedTimeTransactionSources" />
				<asp:ListItem Text="TimedTimeTransactionStatus" Value="TimedTimeTransactionStatus" />
				<asp:ListItem Text="TimedTimeTransactionTypes" Value="TimedTimeTransactionTypes" />
				<asp:ListItem Text="TimeEntryFavorites" Value="TimeEntryFavorites" />
				<asp:ListItem Text="TimeUnits" Value="TimeUnits" />
				<asp:ListItem Text="TimeZones" Value="TimeZones" />
				<asp:ListItem Text="Titles" Value="Titles" />
				<asp:ListItem Text="TrackingNumberClasses" Value="TrackingNumberClasses" />
				<asp:ListItem Text="TrackingNumberClassNames" Value="TrackingNumberClassNames" />
				<asp:ListItem Text="TrackingNumbers" Value="TrackingNumbers" />
				<asp:ListItem Text="TrackingNumberStatus" Value="TrackingNumberStatus" />
				<asp:ListItem Text="TrackingNumberTypes" Value="TrackingNumberTypes" />
				<asp:ListItem Text="UKGovGatewayDeliveries" Value="UKGovGatewayDeliveries" />
				<asp:ListItem Text="UKGovGatewayStatusInformations" Value="UKGovGatewayStatusInformations" />
				<asp:ListItem Text="Units" Value="Units" />
				<asp:ListItem Text="UsageEntitlements" Value="UsageEntitlements" />
				<asp:ListItem Text="UsageInvoiceLines" Value="UsageInvoiceLines" />
				<asp:ListItem Text="UsageSalesItems" Value="UsageSalesItems" />
				<asp:ListItem Text="UsageTransactions" Value="UsageTransactions" />
				<asp:ListItem Text="UserDivisionHistory" Value="UserDivisionHistory" />
				<asp:ListItem Text="UserFeatureSets" Value="UserFeatureSets" />
				<asp:ListItem Text="UserProfileFeatureSets" Value="UserProfileFeatureSets" />
				<asp:ListItem Text="UserProfileRoles" Value="UserProfileRoles" />
				<asp:ListItem Text="UserProfiles" Value="UserProfiles" />
				<asp:ListItem Text="UserRoles" Value="UserRoles" />
				<asp:ListItem Text="Users" Value="Users" />
				<asp:ListItem Text="UsersHistory" Value="UsersHistory" />
				<asp:ListItem Text="UserStatisticsHistory" Value="UserStatisticsHistory" />
				<asp:ListItem Text="UserTypeRoles" Value="UserTypeRoles" />
				<asp:ListItem Text="UserTypes" Value="UserTypes" />
				<asp:ListItem Text="UserUserTypes" Value="UserUserTypes" />
				<asp:ListItem Text="UtilizationLog" Value="UtilizationLog" />
				<asp:ListItem Text="VATBoxes" Value="VATBoxes" />
				<asp:ListItem Text="VATBoxLinks" Value="VATBoxLinks" />
				<asp:ListItem Text="VATBoxTotals" Value="VATBoxTotals" />
				<asp:ListItem Text="VATCodes" Value="VATCodes" />
				<asp:ListItem Text="VATPartialRatios" Value="VATPartialRatios" />
				<asp:ListItem Text="VatPercentages" Value="VatPercentages" />
				<asp:ListItem Text="VolumeDiscountTableEntryMethods" Value="VolumeDiscountTableEntryMethods" />
				<asp:ListItem Text="VolumeUnits" Value="VolumeUnits" />
				<asp:ListItem Text="Warehouses" Value="Warehouses" />
				<asp:ListItem Text="WarehouseTransfers" Value="WarehouseTransfers" />
				<asp:ListItem Text="WarehouseTransferSources" Value="WarehouseTransferSources" />
				<asp:ListItem Text="WarehouseTransferStatus" Value="WarehouseTransferStatus" />
				<asp:ListItem Text="WebPackages" Value="WebPackages" />
				<asp:ListItem Text="WebPackageTypes" Value="WebPackageTypes" />
				<asp:ListItem Text="WebPageHeaders" Value="WebPageHeaders" />
				<asp:ListItem Text="WebPages" Value="WebPages" />
				<asp:ListItem Text="WebPageTags" Value="WebPageTags" />
				<asp:ListItem Text="WebServices" Value="WebServices" />
				<asp:ListItem Text="WebServicesLog" Value="WebServicesLog" />
				<asp:ListItem Text="WebTags" Value="WebTags" />
				<asp:ListItem Text="WeekDays" Value="WeekDays" />
				<asp:ListItem Text="WeightUnits" Value="WeightUnits" />
				<asp:ListItem Text="WordSynonyms" Value="WordSynonyms" />
				<asp:ListItem Text="Workcenters" Value="Workcenters" />
				<asp:ListItem Text="WorkcenterStatus" Value="WorkcenterStatus" />
				<asp:ListItem Text="WorkcenterTypes" Value="WorkcenterTypes" />
				<asp:ListItem Text="Workflow" Value="Workflow" />
				<asp:ListItem Text="WorkflowOwnershipOptions" Value="WorkflowOwnershipOptions" />
				<asp:ListItem Text="XBRLDocumentContexts" Value="XBRLDocumentContexts" />
				<asp:ListItem Text="XBRLDocumentLines" Value="XBRLDocumentLines" />
				<asp:ListItem Text="XBRLDocumentMessages" Value="XBRLDocumentMessages" />
				<asp:ListItem Text="XBRLDocuments" Value="XBRLDocuments" />
				<asp:ListItem Text="XBRLDocumentUnits" Value="XBRLDocumentUnits" />
				<asp:ListItem Text="XBRLGroups" Value="XBRLGroups" />
				<asp:ListItem Text="XBRLTextBlockGroupMappings" Value="XBRLTextBlockGroupMappings" />
				<asp:ListItem Text="XBRLTextBlockGroups" Value="XBRLTextBlockGroups" />
				<asp:ListItem Text="XBRLTextBlocks" Value="XBRLTextBlocks" />
				<asp:ListItem Text="XMLEvents" Value="XMLEvents" />
				<asp:ListItem Text="XMLFiles" Value="XMLFiles" />
				<asp:ListItem Text="XMLFileUpdateStatus" Value="XMLFileUpdateStatus" />
				<asp:ListItem Text="XMLTopicFeatureSets" Value="XMLTopicFeatureSets" />
				<asp:ListItem Text="XMLTopics" Value="XMLTopics" />
				<asp:ListItem Text="YodleeAuditLog" Value="YodleeAuditLog" />
				<asp:ListItem Text="ZvwCodes" Value="ZvwCodes" />
			</asp:DropDownList>
		</div>
			<div id="mainTable" style="padding: 10px;">Main Table</div>
			<div id="fromTable" style="padding: 10px;">Is Referenced in</div>
			<div id="toTable" style="padding: 10px;">Has Reference to</div>
		</div>
		<div id="popupdiv">
			<table id="columnTable" class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="width: 60%; text-align: left; font: 8px;">Name</th>
						<th style="width: 40%; text-align: left; font: 8px;">Domain</th>
					</tr>
				</thead>
				<tbody id="columnGrid">
					<script id="rowTemplate" type="x-tmpl-mustache">
                    {{#ColumnData}}
                    <tr style="cursor:pointer;">
                        <td>{{Name}}</td>
                        <td>{{Domain}}</td>
                    </tr>
                    {{/ColumnData}}
					</script>

				</tbody>
			</table>
		</div>
	</form>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-git2.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
	<script>
		var myDialog;
		$(function () {
			myDialog = $("#popupdiv").dialog({
				autoOpen: false,
				show: {
					effect: "blind",
					duration: 1000
				},
				hide: {
					effect: "blind",
					duration: 1
				}
			});

			$("#opener").click(function () {
				$("#dialog").dialog("open");
			});
		});
	</script>
	<script>
		var columnDataTemplate;
		$(document).ready(function () {
			columnDataTemplate = $('#rowTemplate').html();
		})
		var width = 1400,
            height = 800;

		var color = d3.scale.category10();

		var svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height);

		var force = d3.layout.force()
            .gravity(.08)
            .distance(250)
            .charge(-200)
            .size([width, height]);

		d3.json("result2.json", function (error, json) {
			if (error) throw error;

			force
                .nodes(json.nodes)
                .links(json.links)
                .start();

			var link = svg.selectAll(".link")
                .data(json.links)
              .enter().append("line")
                .attr("class", "link");

			var drag = force.drag()
                .on("dragstart", dragstart);

			var node = svg.selectAll(".node")
                .data(json.nodes)
                .enter().append("g")//.append("circle")
                //.enter().append("circle")
                .attr("class", "node")
                .attr("r", 50)
                .on("dblclick", dblclick)
                .on("click", nodeclick)
                .on("mouseover", mouseover)
                .on("mouseout", mouseout)
                .style("fill", function (d) { return color(d.group); })
                //.style("stroke", function (d) { return color(d.group); })
                .call(drag);

			//node.append("image")
			//    .attr("xlink:href", "https://github.com/favicon.ico")
			//    .attr("x", -8)
			//    .attr("y", -8)
			//    .attr("width", 16)
			//    .attr("height", 16);

			node.append("text")
                .attr("dx", 12)
                .attr("dy", ".35em")
                .text(function (d) { return d.name });
			node.append("circle")
            .attr("class", "node")
                .attr("r", 12)
                .on("dblclick", dblclick)
                .on("click", nodeclick)
                .style("fill", function (d) { return color(d.group); })

			node.append("title")
                .text(function (d) {
                	return d.relationDescription;
                });

			force.on("tick", function () {
				link.attr("x1", function (d) { return d.source.x; })
                    .attr("y1", function (d) { return d.source.y; })
                    .attr("x2", function (d) { return d.target.x; })
                    .attr("y2", function (d) { return d.target.y; });

				node.attr("transform", function (d) { return "translate(" + d.x + "," + d.y + ")"; });
			});

			function dragstart(d) {
				d3.select(this).classed("fixed", d.fixed = true);
			}

			function dblclick(d) {
				if (d.group == 1) {
					d3.select(this).classed("fixed", d.fixed = false);
				}
				else {
					var frm = $("form");
					$("select").val(d.name);
					frm.submit();
				}
			}

			function nodeclick(d) {
				//alert("2");
				//var x = d3.select(this);
				//columnDataTemplate
				//var templateControl = " {{#ColumnData}} <tr> <td>{{Name}}</td> <td>{{Domain}}</td> </tr> {{/ColumnData}}";
				var html = Mustache.to_html(columnDataTemplate, d);
				$('#columnGrid').html(html);
				myDialog.data("uiDialog")._title = function (title) {
					title.html(this.options.title);
				};

				myDialog.dialog('option', 'title',
                    '<a href="http://localhost/TwoLinesOfCode/docs/SysTableColumns.aspx?Table=' +
                    d.name +
                    '&DatabaseID=%7b2011b525-d39c-49e8-96d6-5460bb3db3da%7d&_Division_=1">' +
                    d.name +
                    '</a>');
				$("#popupdiv").dialog({ height: 800 });
				//alert(x);
			}
			function mouseover(d) {
				//var x = e.pageX - $(document).scrollLeft();
				//var y = e.pageY - $(document).scrollTop();
				//$("#popupdiv").dialog("option", "position", [d.x, d.y]);
				//if (d.Datalist)
				//   $("#popupdiv").html("are dige").fadeIn();

			}

			function mouseout(d) {
				// $("#popupdiv").dialog("close");
			}
		});

		(function () {
			$("#mainTable").css("background-color", color(1));
			$("#fromTable").css("background-color", color(3));
			$("#toTable").css("background-color", color(2));
			//alert(color(3));
		})();
	</script>
</body>
</html>

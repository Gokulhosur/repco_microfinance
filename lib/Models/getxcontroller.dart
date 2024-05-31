import 'package:get/get.dart';

class GlobleVar extends GetxController {
  // var selectdocument;
  Map applicantMap = {
    "personalDetails": {
      "gender": "",
      "customername": "",
      "fathername": "",
      "mothername": "",
      "married": "",
      "dateofbirth": "",
      "educationalqualification": "",
      "occupation": "",
      "yearlyincome": "",
      "place": ""
    },
    "familyList": {
      "noofFamilymembers": "",
      "noofEarningmembers": "",
      "noofNonEarningmembers": "",
      "noofMarriedMembers": "",
      "noofUnmarriedMembers": "",
      "noofChildren": "",
      "others": "",
      "widow": ""
    },
    "documentDetails": {
      "selectedDocumentMain": "",
      "name_in_Document": "",
      "document_number": "",
      "selectDocument": "",
      "nameInDocument": "",
      "documentNumber": "",
      "mainDocumentImages": [],
      "extraDocumentImages": []
    },
    "bankDetails": {
      "bankName": "",
      "accountNumber": "",
      "branchName": "",
      "ifscCode": "",
    },
    "addressDetails": {
      "addressLine1": "",
      "addressLine2": "",
      "state": "",
      "city": "",
      "area": "",
      "pincode": "",
      "documentImages": [],
      /*TODO*/
      "signImages": [],
    }
  };

  Map familyMap = {
    "personalDetails": {
      "gender": "",
      "relationType": "",
      "customername": "",
      "fathername": "",
      "mothername": "",
      "married": "",
      "dateofbirth": "",
      "educationalqualification": "",
      "occupation": "",
      "yearlyincome": "",
      "place": ""
    },
    "documentDetails1": {
      "selectedDocumentMain": "",
      "name_in_Document": "",
      "document_number": "",
      "selectDocument": "",
      "nameInDocument": "",
      "documentNumber": "",
      "familyMainDocumentImages": [],
      "familyExtraDocumentImages": []
    },
    "bankDetails": {
      "bankName": "",
      "accountNumber": "",
      "branchName": "",
      "ifscCode": "",
    },
    "addressDetails": {
      "addressLine1": "",
      "addressLine2": "",
      "state": "",
      "city": "",
      "area": "",
      "pincode": "",
      "familyDocumentImages": [],
      "familySignImages": [],
    }
  };
  Map introducerMap = {
    "introducer": {
      "referredName": "",
      "customerID": "",
      "knownPeriodYear": "",
      "knownPeriodMonths": "",
      "introducerSignImages": [],
    }
  };
  Map incomeAssetMap = {
    "residency": {
      "house": "",
      "monthlyRental": "",
      "residency": "",
      "residencyPeriod": "",
      "residencyLandType": "",
      "buildYear": "",
      "oldBuilding": "",
      "newBuilding": "",
      "templeBuilding": "",
      "templeLand": "",
      "projectCompletionYear": "",
      "otherDetails": "",
    },
    "asset": {
      "land": "",
      "agricultureLand": "",
      "emptyLand": "",
      "cattle": "",
      "others": "",
    },
    "vehicles": {
      "twoWheeler": "",
      "threeWheeler": "",
      "fourWheeler": "",
      "commercialUtility": "",
    },
    "householdAmneties": {
      "phoneCount": "",
      "phoneType": "",
      "acCount": "",
      "acType": "",
      "mixieCount": "",
      "mixieType": "",
      "fridgeCount": "",
      "fridgeType": "",
      "tvCount": "",
      "tvType": "",
      "washingMachineCount": "",
      "washingMachineType": "",
      "fanCount": "",
      "fanType": "",
      "others": "",
    },
    "income": {
      "selectApplicant": "",
      "incomeHead": "",
      "incomeRs": "",
      "incomeHead2": "",
      "incomeRs2": "",
      "lastYearWorkedPeriod": "",
      "annualIncome": "",
      "otherSource": "",
      "otherSourceincomeRs": "",
      "newBusiness": "",
      "details": "",
    },
  };
  Map loanpage = {
    "loan": {
      "selectApplicant": "",
      "loanTypes": "",
      "loanInstitutionName": "",
      "outstandingAmount": "",
      "emi": "",
      "note": "",
      "repaymentIssues": "",
      "totalOutstandingAmount": "",
      "totalEmi": "",
    }
  };
  Map loanRequirement = {
    "requirement": {
      "requestedLoanAmount": "",
      "repaymentTenure": "",
      "expectedEmi": "",
    }
  };

  // List mainDocument = [];
  // List sign = [];
  // List extraDocument = [];
}

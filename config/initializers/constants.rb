$EXAMPLES = [
  {
    name: "Tom, Snow",
    params: {
      fname: "Tom",
      lname: "Snow",
      gender: "M",
      dob_year: "1987",
      dob_month: "4",
      dob_day: "9",
      state: "KY",
      city: "Paducah",
      zipcode: "42001"
    },
    response: {
      result: "yes",
      info: "The claim is approved."
    }
  },
  {
    name: "Wyatt, Jerry",
    params: {
      fname: "Wyatt",
      lname: "Jerry",
      gender: "M",
      dob_year: "1967",
      dob_month: "7",
      dob_day: "13",
      state: "TN",
      city: "Jackson",
      zipcode: "38301"
    },
    response: {
      result: "no",
      info: "MEDICARE, MEDICAID AND OTHER STATE OR FEDERAL GOVT INSURED PATIENTS ARE NOT ELIGIBLE FOR THIS OFFER."
    }
  }
]
$API_PARAMS = {
  prefix: "Client Prefix",
  fname: "Client First name",
  middle_name: "Client Middle name",
  lname: "Client Last name",
  postfix: "Client Postfix",
  address1: "Client Address",
  address2: "Client Address",
  zipcode: "Zip code",
  city: "City",
  state: "State",
  phone_number: "Client Phone Number",
  gender: "Gender",
  dob_day: "Date of birth day",
  dob_month: "Date of birth month",
  dob_year: "Date of birth year",
  medication: "Medication NDC code",
  grp: "Group Number",
  bin: "Bin Number",
  pcn: "PCN Number",
  plan_name: "Insurance Plan Name",
  patient_primary_plan: "Patient Primary Plan",
  primary_processor_plan: "Primary Processor Plan",
  processor: "Processor",
  patient_claim_processor: "Patient Claim Processor",
  pcity: "Pharmacy City",
  pstate: "Pharmacy State",
  pzip: "Pharmacy Zip Code",
  pharmacy_npi: "Pharmacy NPI",
  #pharmacy_location: :pharmacy_location,
  #claims_id: :claims_id,
  #claims_fillnum: :claims_fillnum,
  #claims_dispensedate: :claims_dispensedate,
  #claims_pharmancpdp: :claims_pharmancpdp,
  #claims_rxid: :claims_rxid,
  #claims_benefit_type: :claims_benefit_type,
  #claims_rejectreason: :claims_rejectreason,
  #claims_couponid: :claims_couponid,
  #claims_pharmacyzip: :claims_pharmacyzip,
  #prior_authorization_code: :prior_authorization_code,
  #other_charge_code: :other_charge_code,
}

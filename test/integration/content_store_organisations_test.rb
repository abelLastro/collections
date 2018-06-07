require 'integration_test_helper'

class ContentStoreOrganisationsTest < ActionDispatch::IntegrationTest
  before do
    content_store_has_item('/government/organisations', organisations_content_hash)
    visit "/government/organisations"
  end

  it "returns 200 when visiting organisations page" do
    assert_equal 200, page.status_code
  end

  it "renders webpage title" do
    assert page.has_title?("Departments, agencies and public bodies - GOV.UK")
  end

  it "renders page title" do
    assert page.has_css?('.gem-c-title__text', text: "Departments, agencies and public bodies")
  end

  it "renders an organisation_type heading" do
    assert page.has_css?('.gem-c-heading', text: 'Ministerial departments')
  end

  it "renders organisation count" do
    assert page.has_css?('.department-count span', text: '1')
  end

  it "renders an accessible version of organisation count" do
    assert page.has_css?('.department-count span[aria-hidden="true"]')
    assert page.has_css?('.department-count p.visuallyhidden', text: 'There are 2 Non ministerial departments')
  end

  it "renders ministerial organisation with crest" do
    assert page.has_css?('test-govuk-component[data-template="govuk_component-organisation_logo"]')
    assert page.has_content?("Attorney General's Office")
    assert page.has_content?("/government/organisations/attorney-generals-office")
    assert page.has_content?("attorney-generals-office")
    assert page.has_content?("single-identity")
  end

  it "renders non-ministerial organisation without crest" do
    assert page.has_css?('.organisation-list__item-title[href="/government/organisations/arts-and-humanities-research-council"]', text: 'Arts and Humanities Research Council')
    assert page.has_css?('.organisation-list__item-context', text: 'separate website')
  end

  it "displays child organisations count" do
    assert page.has_content?("Works with 4 agencies and public bodies")
  end

private

  def organisations_content_hash
    @content_hash = {
      title: "Departments, agencies and public bodies",
      details: {
      ordered_ministerial_departments: [
        {
          title: "Attorney General's Office",
          href: "/government/organisations/attorney-generals-office",
          brand: "attorney-generals-office",
          logo: {
            formatted_title: "Attorney General's Office",
            crest: "single-identity"
          },
          separate_website: false,
          works_with: {
            non_ministerial_department: [
              {
                title: "Crown Prosecution Service",
                href: "/government/organisations/crown-prosecution-service"
              },
              {
                title: "Government Legal Department",
                href: "/government/organisations/government-legal-department"
              },
              {
                title: "Serious Fraud Office",
                href: "/government/organisations/serious-fraud-office"
              }
          ],
            other: [
              {
                title: "HM Crown Prosecution Service Inspectorate",
                href: "/government/organisations/hm-crown-prosecution-service-inspectorate"
              }
            ],
            executive_ndpb: []
          }
        }
      ],
      ordered_non_ministerial_departments: [
        {
          title: "Arts and Humanities Research Council",
          href: "/government/organisations/arts-and-humanities-research-council",
          separate_website: true
        },
        {
          title: "Competition and Markets Authority",
          href: "/government/organisations/competition-and-markets-authority",
          separate_website: true
        }
      ],
      ordered_executive_offices: [],
      ordered_agencies_and_other_public_bodies: [],
      ordered_high_profile_groups: [],
      ordered_public_corporations: [],
      ordered_devolved_administrations: []
      }
    }
  end
end

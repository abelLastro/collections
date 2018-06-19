require 'integration_test_helper'

class OrganisationTest < ActionDispatch::IntegrationTest
  include OrganisationHelpers

  before do
    @content_item_no10 = {
      title: "Prime Minister's Office, 10 Downing Street",
      base_path: "/government/organisations/prime-ministers-office-10-downing-street",
      details: {
        body: "10 Downing Street is the official residence and the office of the British Prime Minister.",
        brand: "cabinet-office",
        logo: {
          formatted_title: "Prime Minister&#39;s Office, 10 Downing Street",
          crest: "eo"
        },
        organisation_govuk_status: {
          status: "live",
        },
        organisation_type: "executive_office",
        organisation_featuring_priority: "news",
        ordered_featured_documents: [
          {
            title: "Government calls on technology firms to help tackle the UK’s biggest challenges",
            href: "/government/news/government-calls-on-technology-firms-to-help-tackle-the-uks-biggest-challenges",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/feature/image/62609/Dowden.jpg",
              alt_text: "Cabinet Office Minister Oliver Dowden"
            },
            summary: "The government is launching competitions for tech firms to develop solutions to tackle the major social challenges of our modern age.",
            public_updated_at: "2018-05-10T00:00:01.000+01:00",
            document_type: "Press release"
          },
        ],
        ordered_ministers: [
          {
            name_prefix: "The Rt Hon",
            name: "Theresa May MP",
            role: "Prime Minister",
            href: "/government/people/theresa-may",
            role_href: "/government/ministers/prime-minister",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/person/image/6/PM_portrait_960x640.jpg",
              alt_text: "Theresa May MP"
            }
          }
        ],
        social_media_links: [
          {
            service_type: "twitter",
            title: "Twitter - @10DowningStreet",
            href: "https://twitter.com/@10DowningStreet"
          },
          {
            service_type: "facebook",
            title: "Facebook",
            href: "https://www.facebook.com/10downingstreet"
          },
        ]
      },
      links: {
        available_translations: []
      }
    }

    @content_item_attorney_general = {
      title: "Attorney General's Office",
      base_path: "/government/organisations/attorney-generals-office",
      details: {
        body: "The Attorney General's Office (AGO) provides legal advice and support to the Attorney General and the Solicitor General (the Law Officers) who give legal advice to government. The AGO helps the Law Officers perform other duties in the public interest, such as looking at sentences which may be too low.\r\n\r\n",
        brand: "attorney-generals-office",
        logo: {
          formatted_title: "Attorney <br/>General&#39;s <br/>Office",
          crest: "single-identity"
        },
        organisation_govuk_status: {
          status: "live",
        },
        organisation_type: "ministerial_department",
        organisation_featuring_priority: "news",
        ordered_featured_links: [
          {
            title: "Attorney General's guidance to the legal profession",
            href: "https://www.gov.uk/browse/justice/courts-sentencing-tribunals/attorney-general-guidance-to-the-legal-profession"
          }
        ],
        ordered_featured_documents: [
          {
            title: "New head of the Serious Fraud Office announced",
            href: "/government/news/new-head-of-the-serious-fraud-office-announced",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/feature/image/63252/Jeremy_Wright_FOR_WEBSITE.jpg",
              alt_text: "Attorney General Jeremy Wright QC MP"
            },
            summary: "Lisa Osofsky appointed new Director of the Serious Fraud Office ",
            public_updated_at: "2018-06-04T11:30:03.000+01:00",
            document_type: "Press release"
          }
        ],
        ordered_ministers: [
          {
            name_prefix: "The Rt Hon",
            name: "Theresa May MP",
            role: "Prime Minister",
            href: "/government/people/theresa-may",
            role_href: "/government/ministers/prime-minister",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/person/image/6/PM_portrait_960x640.jpg",
              alt_text: "Theresa May MP"
            }
          },
          {
            name: "Stuart Andrew MP",
            role: "Parliamentary Under Secretary of State",
            href: "/government/people/stuart-andrew",
            role_href: "/government/ministers/parliamentary-under-secretary-of-state--94"
          }
        ],
        social_media_links: [
          {
            service_type: "twitter",
            title: "Twitter - @attorneygeneral",
            href: "https://twitter.com/@attorneygeneral"
          }
        ],
        ordered_board_members: [
          {
            name: "Sir Jeremy Heywood",
            role: "Cabinet Secretary",
            href: "/government/people/jeremy-heywood",
          }
        ]
      },
      links: {
        available_translations: [],
        ordered_high_profile_groups: [
          {
            base_path: "/government/organisations/attorney-generals-office-1",
            title: "High Profile Group 1",
          },
          {
            base_path: "/government/organisations/attorney-generals-office-2",
            title: "High Profile Group 2",
          }
        ]
      }
    }

    @content_item_charity_commission = {
      title: "The Charity Commission",
      base_path: "/government/organisations/charity-commission",
      details: {
        body: "We register and regulate charities in England and Wales, to ensure that the public can support charities with confidence.\r\n",
        brand: "department-for-business-innovation-skills",
        logo: {
          formatted_title: "Charity Commission",
          image: {
            url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/organisation/logo/98/Home_page.jpg",
            alt_text: "The Charity Commission"
          }
        },
        foi_exempt: true,
        organisation_govuk_status: {
          status: "live",
        },
        organisation_type: "non_ministerial_department",
        organisation_featuring_priority: "service",
        ordered_featured_links: [
          {
            title: "Find a charity",
            href: "http://apps.charitycommission.gov.uk/showcharity/registerofcharities/RegisterHomePage.aspx"
          },
          {
            title: "Online services and contact forms",
            href: "https://www.gov.uk/government/organisations/charity-commission/about/about-our-services"
          },
        ],
        ordered_featured_documents: [
          {
            title: "Charity annual return 2018",
            href: "/government/news/charity-annual-return-2018",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/feature/image/63313/AR18_prepare_v1.1.png",
              alt_text: "Annual return service 2018"
            },
            summary: "How you can prepare for the 2018 annual return service, which will be available this summer. ",
            public_updated_at: "2018-06-06T10:56:00.000+01:00",
            document_type: "News story"
          }
        ],
        social_media_links: [
          {
            service_type: "twitter",
            title: "Twitter",
            href: "https://twitter.com/chtycommission"
          },
          {
            service_type: "youtube",
            title: "YouTube",
            href: "http://www.youtube.com/TheCharityCommission"
          },
        ]
      },
      links: {
        available_translations: [],
        ordered_featured_policies: [
          {
            api_path: "/api/content/government/policies/waste-and-recycling",
            base_path: "/government/policies/waste-and-recycling",
            content_id: "5d5e9324-7631-11e4-a3cb-005056011aef",
            description: "What the government’s doing about waste and recycling.",
            document_type: "policy",
            locale: "en",
            public_updated_at: "2015-05-14T16:39:48Z",
            schema_name: "policy",
            title: "Waste and recycling",
            withdrawn: false,
            links: {},
            api_url: "https://www.gov.uk/api/content/government/policies/waste-and-recycling",
            web_url: "https://www.gov.uk/government/policies/waste-and-recycling"
          },
        ]
      }
    }

    @content_item_wales_office = {
      title: "Office of the Secretary of State for Wales",
      base_path: "/government/organisations/office-of-the-secretary-of-state-for-wales",
      details: {
        body: "The Office of the Secretary of State for Wales supports the Welsh Secretary",
        brand: "wales-office",
        logo: {
          formatted_title: "Office of the Secretary of State for Wales<br/>Swyddfa Ysgrifennydd Gwladol Cymru",
          crest: "single-identity"
        },
        organisation_govuk_status: {
          status: "live",
        },
        organisation_type: "non_ministerial_department",
        ordered_featured_links: [
          {
            title: "Wales Office Featured Link",
            href: "/wales/link/1"
          }
        ],
        ordered_featured_documents: [
          {
            title: "Welsh Secretary hails outstanding individuals in the Queen's Birthday Honours list",
            href: "/government/news/welsh-secretary-hails-outstanding-individuals-in-the-queens-birthday-honours-list",
            image: {
              url: "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/feature/image/63372/GOV.UK_honours_web.jpg",
              alt_text: "Queen's Birthday Honours"
            },
            summary: "Alun Cairns: \"I'm proud to see people from all walks of Welsh life honoured today\".",
            public_updated_at: "2018-06-08T23:23:11.000+01:00",
            document_type: "Press release"
          },
        ],
        social_media_links: [
          {
            service_type: "twitter",
            title: "Twitter",
            href: "https://twitter.com/UKGovWales"
          },
          {
            service_type: "twitter",
            title: "Trydar",
            href: "https://twitter.com/LlywDUCymru"
          }
        ],
        ordered_military_personnel: [
          {
            name: "Air Chief Marshal Sir  Stuart Peach GBE KCB ADC DL",
            role: "Chief of the Defence Staff",
            href: "/government/people/stuart-peach",
          }
        ]
      },
      links: {
        available_translations: [
          {
            "base_path": "/government/organisations/office-of-the-secretary-of-state-for-wales.cy",
            "locale": "cy",
          },
          {
            "base_path": "/government/organisations/office-of-the-secretary-of-state-for-wales",
            "locale": "en",
          }
        ],
        ordered_foi_contacts: [
          {
            withdrawn: false,
            details: {
              title: "FOI stuff",
              description: "FOI requests\r\n\r\nare possible",
              post_addresses: [
                {
                  title: "Office of the Secretary of State for Wales",
                  street_address: "Gwydyr House\r\nWhitehall",
                  locality: "",
                  postal_code: "SW1A 2NP",
                },
                {
                  title: "Office of the Secretary of State for Wales Cardiff",
                  street_address: "White House\r\nCardiff",
                  locality: "",
                  postal_code: "W1 3BZ",
                }
              ],
              email_addresses: [
                {
                  email: "walesofficefoi@walesoffice.gsi.gov.uk"
                },
                {
                  email: "foiwales@walesoffice.gsi.gov.uk"
                }
              ]
            }
          },
          {
            withdrawn: false,
            details: {
              description: "Something here\r\n\r\nSomething there",
              post_addresses: [
                {
                  title: "The Welsh Office",
                  street_address: "Green House\r\nBracknell",
                  locality: "",
                  postal_code: "B2 3ZZ",
                }
              ],
              email_addresses: [
                {
                  email: "welshofficefoi@walesoffice.gsi.gov.uk"
                }
              ]
            }
          }
        ]
      }
    }

    @content_item_separate_website = {
      title: "Fire Service College",
      base_path: "/government/organisations/fire-service-college",
      details: {
        body: "The Fire Service College (FSC) supplies specialist fire and rescue training to the UK's own fire and rescue services, the private security sector and the international market.\r\n\r\nThe college was formerly an executive agency of the Department for Communities and Local Government and was sold to Capita on 28 February 2013.<abbr title=\"Fire Service College\">FSC</abbr>",
        brand: "null",
        logo: {
          formatted_title: "Fire Service College",
        },
        organisation_govuk_status: {
          status: "exempt",
          url: "http://www.google.com",
          updated_at: "null"
        },
      }
    }

    @content_item_blank = {
      title: "An empty content item to test everything checks before trying to render things",
      base_path: "/government/organisations/civil-service-resourcing",
      details: {
        body: "",
        brand: "",
        logo: {
        },
        organisation_govuk_status: {
          status: "",
        },
      },
      links: {
      }
    }

    content_store_has_item("/government/organisations/prime-ministers-office-10-downing-street", @content_item_no10)
    content_store_has_item("/government/organisations/attorney-generals-office", @content_item_attorney_general)
    content_store_has_item("/government/organisations/charity-commission", @content_item_charity_commission)
    content_store_has_item("/government/organisations/office-of-the-secretary-of-state-for-wales", @content_item_wales_office)
    content_store_has_item("/government/organisations/fire-service-college", @content_item_separate_website)
    content_store_has_item("/government/organisations/civil-service-resourcing", @content_item_blank)

    stub_rummager_latest_content_requests("prime-ministers-office-10-downing-street")
    stub_rummager_latest_content_requests("attorney-generals-office")
    stub_rummager_latest_content_requests("charity-commission")
    stub_rummager_latest_content_requests("office-of-the-secretary-of-state-for-wales")
    stub_rummager_latest_content_requests("civil-service-resourcing")
  end

  it "doesn't fail if the content item is missing any data" do
    visit "/government/organisations/civil-service-resourcing"
    assert page.has_css?(".content")
  end

  it "sets the page title" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    assert page.has_title?("Prime Minister's Office, 10 Downing Street - GOV.UK")

    visit "/government/organisations/attorney-generals-office"
    assert page.has_title?("Attorney General's Office - GOV.UK")

    visit "/government/organisations/charity-commission"
    assert page.has_title?("Charity Commission - GOV.UK")
  end

  it "shows the no10 banner element only on no10's page" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    assert page.has_css?(".no10-banner", text: "Prime Minister's Office, 10 Downing Street")

    visit "/government/organisations/attorney-generals-office"
    refute page.has_css?(".no10-banner")

    visit "/government/organisations/charity-commission"
    refute page.has_css?(".no10-banner")

    visit "/government/organisations/civil-service-resourcing"
    refute page.has_css?(".no10-banner")
  end

  it "renders the logo and logo brand correctly" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    refute page.has_css?(".gem-c-organisation-logo")

    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-organisation-logo.brand--attorney-generals-office .gem-c-organisation-logo__name", text: "Attorney General's Office")

    visit "/government/organisations/charity-commission"
    assert page.has_css?(".gem-c-organisation-logo.brand--department-for-business-innovation-skills img[alt='The Charity Commission']")
  end

  it "shows featured links correctly if present" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    refute page.has_css?(".app-c-topic-list")

    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".app-c-topic-list.app-c-topic-list--small .app-c-topic-list__link", text: "Attorney General's guidance to the legal profession")

    visit "/government/organisations/charity-commission"
    assert page.has_css?(".app-c-topic-list .app-c-topic-list__link", text: "Find a charity")
    refute page.has_css?(".app-c-topic-list.app-c-topic-list--small")
  end

  it "shows the translation nav if required" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    refute page.has_css?(".gem-c-translation-nav")

    visit "/government/organisations/attorney-generals-office"
    refute page.has_css?(".gem-c-translation-nav")

    visit "/government/organisations/office-of-the-secretary-of-state-for-wales"
    assert page.has_css?(".gem-c-translation-nav")

    visit "/government/organisations/civil-service-resourcing"
    refute page.has_css?(".gem-c-translation-nav")
  end

  it "shows a large news item only on news organisations" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-image-card.gem-c-image-card--large .gem-c-image-card__title", text: "New head of the Serious Fraud Office announced")

    visit "/government/organisations/charity-commission"
    assert page.has_css?(".gem-c-image-card .gem-c-image-card__title", text: "Charity annual return 2018")
    refute page.has_css?(".gem-c-image-card.gem-c-image-card--large .gem-c-image-card__title", text: "Charity annual return 2018")
  end

  it "shows the latest documents when it should" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-heading", text: "Latest from the Attorney General's Office")
    assert page.has_css?(".gem-c-document-list__item-title[href='/government/news/rapist-has-sentence-increased-after-solicitor-generals-referral']", text: "Rapist has sentence increased after Solicitor General’s referral")
    assert page.has_css?(".gem-c-document-list__attribute", text: "Press release")
    assert page.has_css?(".gem-c-document-list__attribute time[datetime='2018-06-18']", text: "18 June 2018")
  end

  it "shows a see all link in the latest documents section" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?("a[href='/government/latest?departments%5B%5D=attorney-generals-office']", text: "See all")
  end

  it "shows subscription links" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-subscription-links__link[href='/government/email-signup/new?email_signup%5Bfeed%5D=http://www.test.gov.uk/government/organisations/attorney-generals-office.atom']", text: "Get email alerts")
    assert page.has_css?(".gem-c-subscription-links__link[href='#']", text: "Subscribe to feed")
  end

  it "shows the 'what we do' section" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    assert page.has_content?(/10 Downing Street is the official residence and the office of the British Prime Minister/i)

    visit "/government/organisations/attorney-generals-office"
    assert page.has_content?(/provides legal advice and support to the Attorney General/i)
  end

  it "shows 'our policies' when it should" do
    visit "/government/organisations/attorney-generals-office"
    refute page.has_content?(/Our policies/i)

    visit "/government/organisations/charity-commission"
    assert page.has_content?(/Our policies/i)
    assert page.has_css?(".gem-c-document-list__item-title", text: "Waste and recycling")
  end

  it "shows latest documents by type" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-heading", text: "Documents")

    assert page.has_css?(".gem-c-heading", text: "Our announcements")
    assert page.has_css?(".gem-c-document-list__item-title[href='/government/news/first-events-announced-for-national-democracy-week']", text: "First events announced for National Democracy Week")

    assert page.has_css?(".gem-c-heading", text: "Our consultations")
    assert page.has_css?(".gem-c-document-list__item-title[href='/government/consultations/consultation-on-revised-code-of-data-matching-practice']", text: "Consultation on revised Code of Data Matching Practice")

    assert page.has_css?(".gem-c-heading", text: "Our publications")
    assert page.has_css?(".gem-c-document-list__item-title[href='/government/publications/national-democracy-week-partner-pack']", text: "National Democracy Week: partner pack")

    refute page.has_css?(".gem-c-heading", text: "Our statistics")
  end

  it "does not show the latest documents by type section if there are none" do
    stub_empty_rummager_requests("attorney-generals-office")
    visit "/government/organisations/attorney-generals-office"
    refute page.has_css?(".gem-c-heading", text: "Documents")
  end

  it "shows the ministers for an organisation" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-heading", text: "Our ministers")
    assert page.has_css?(".gem-c-image-card .gem-c-image-card__title-link", text: "Theresa May MP")
    assert page.has_css?(".gem-c-image-card .gem-c-image-card__title-link", text: "Stuart Andrew MP")
  end

  it "does not show the ministers section for no.10" do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    refute page.has_css?(".gem-c-heading", text: "Our ministers")
    refute page.has_css?(".gem-c-image-card .gem-c-image-card__title-link", text: "Theresa May MP")
  end

  it "does not display ministers for organisations without minister data" do
    visit "/government/organisations/charity-commission"
    refute page.has_css?(".gem-c-heading", text: "Our ministers")
  end

  it "shows the non-ministers for an organisation" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-heading", text: "Our management")
    assert page.has_css?(".gem-c-image-card .gem-c-image-card__title-link", text: "Sir Jeremy Heywood")

    visit "/government/organisations/office-of-the-secretary-of-state-for-wales"
    assert page.has_css?(".gem-c-heading", text: "Our senior military officials")
    assert page.has_css?(".gem-c-image-card__title .gem-c-image-card__title-link[href='/government/people/stuart-peach']")
    assert page.has_css?(".gem-c-image-card__description", text: "Chief of the Defence Staff")
  end

  it "does not display non-ministers for an organisation if data not present" do
    visit "/government/organisations/attorney-generals-office"
    refute page.has_css?(".gem-c-heading", text: "Our senior military officials")
    refute page.has_css?(".gem-c-heading", text: "Chief professional officers")
    refute page.has_css?(".gem-c-heading", text: "Special representatives")
    refute page.has_css?(".gem-c-heading", text: "Traffic commissioners")

    visit "/government/organisations/office-of-the-secretary-of-state-for-wales"
    refute page.has_css?(".gem-c-heading", text: "Our management")
    refute page.has_css?(".gem-c-heading", text: "Chief professional officers")
    refute page.has_css?(".gem-c-heading", text: "Special representatives")
    refute page.has_css?(".gem-c-heading", text: "Traffic commissioners")
  end

  it 'displays the separate website page correctly' do
    visit "/government/organisations/fire-service-college"
    assert page.has_css?(".gem-c-organisation-logo")
    assert page.has_css?(".gem-c-notice", text: "Fire Service College has a separate website")
    assert page.has_css?(".gem-c-notice a[href='http://www.google.com']", text: "separate website")
    assert page.has_css?(".gem-c-govspeak")
    assert page.has_content?(/The college was formerly an executive agency of the Department for Communities and Local Government/i)
  end

  it 'displays foi information correctly where required' do
    visit "/government/organisations/prime-ministers-office-10-downing-street"
    refute page.has_content?(/Make an FOI request/i)
    refute page.has_content?(/Freedom of Information (FOI) Act/i)

    visit "/government/organisations/charity-commission"
    assert page.has_content?(/This organisation is not covered by the Freedom of Information Act. To see which organisations are included, see the legislation./i)

    visit "/government/organisations/office-of-the-secretary-of-state-for-wales"
    assert page.has_content?(/Make an FOI request/i)
    assert page.has_css?(".gem-c-heading", text: "FOI stuff")
    assert page.has_content?(/Office of the Secretary of State for Wales/i)
    assert page.has_content?(/Gwydyr House/i)
    assert page.has_content?(/Whitehall/i)
    assert page.has_content?(/SW1A 2NP/i)

    assert page.has_content?(/Office of the Secretary of State for Wales Cardiff/i)
    assert page.has_content?(/The Welsh Office/i)
    assert page.has_content?(/walesofficefoi@walesoffice.gsi.gov.uk/i)
    assert page.has_content?(/foiwales@walesoffice.gsi.gov.uk/i)
    assert page.has_content?(/welshofficefoi@walesoffice.gsi.gov.uk/i)
  end

  it "shows high profile groups section" do
    visit "/government/organisations/attorney-generals-office"
    assert page.has_css?(".gem-c-heading", text: "High profile groups within the Attorney General\'s Office")
    assert page.has_css?(".app-c-topic-list__link[href='/government/organisations/attorney-generals-office-1']", text: "High Profile Group 1")
    assert page.has_css?(".app-c-topic-list__link[href='/government/organisations/attorney-generals-office-2']", text: "High Profile Group 2")
  end

  it 'does not show section for organisations without high profile groups' do
    visit "/government/organisations/office-of-the-secretary-of-state-for-wales"
    refute page.has_css?(".gem-c-heading", text: "High profile groups within the Office of the Secretary of State for Wales")
  end
end

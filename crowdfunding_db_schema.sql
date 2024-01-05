-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "category" (
    "category_id" varchar(300)   NOT NULL,
    "category" varchar(300)    NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(300)    NOT NULL,
    "last_name" varchar(300)    NOT NULL,
    "email" varchar(300)    NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(300)    NOT NULL,
    "subcategory" varchar(300)    NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(300)    NOT NULL,
    "description" varchar(300)    NOT NULL,
    "goal" double precision  NOT NULL,
    "pledged" double precision  NOT NULL,
    "outcome" varchar(300)    NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(300)    NOT NULL,
    "currency" varchar(300)    NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(300)    NOT NULL,
    "subcategory_id" varchar(300)    NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");




select * from campaign
select * from category
select * from contacts
select * from subcategory







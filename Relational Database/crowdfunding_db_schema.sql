-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" CHAR(4)   NOT NULL,
    "contact_id" CHAR(4)   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(60)   NOT NULL,
    "currency" INTEGER   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" CHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "Last_Updated" Timestamp DEFAULT Localtimestamp NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contact" (
    "contact_id" CHAR(4)   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    "Last_Updated" Timestamp DEFAULT Localtimestamp NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" CHAR(4)   NOT NULL,
    "category_name" VARCHAR(30)   NOT NULL,
    "Last_Updated" Timestamp DEFAULT Localtimestamp NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory_name" VARCHAR(20)   NOT NULL,
    "Last_Updated" Timestamp DEFAULT Localtimestamp NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


-- Show the tables if exist
SELECT * 
FROM category

SELECT * 
FROM subcategory

SELECT * 
FROM contacts

SELECT *
FROM campaign
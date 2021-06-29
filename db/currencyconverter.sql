--
-- File generated with SQLiteStudio v3.2.1 on Mon Jun 21 17:56:36 2021
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: CurrencyConverter
CREATE TABLE CurrencyConverter (country_name STRING, currency_code STRING, currency_name STRING, currency_sign STRING);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Albania', 'ALL', 'Lek', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Andorra', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Austria', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Belarus', 'BYR', 'Ruble', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Belgium', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Bosnia and Herzegovina', 'BAM', 'Convertible Mark', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Bulgaria', 'BGN', 'Lev', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Croatia', 'HRK', 'Kuna', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Czech Republic', 'CZK', 'Koruna', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Denmark', 'DKK', 'Krone', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Estonia', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Finland', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('France', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Germany', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Greece', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Holy See', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Hungary', 'HUF', 'Forint', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Iceland', 'ISK', 'Krona', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Ireland', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Italy', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Latvia', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Liechtenstein', 'CHF', 'Swiss Franc', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Lithuania', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Luxembourg', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Malta', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Moldova', 'MDL', 'Leu', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Monaco', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Montenegro', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Netherlands', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('North Macedonia', 'MKD', 'Denar', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Norway', 'NOK', 'Krone', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Poland', 'PLN', 'Zloty', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Portugal', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Romania', 'RON', 'Leu', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Russia', 'RUB', 'Ruble', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('San Marino', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Serbia', 'RSD', 'Dinar', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Slovakia', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Slovenia', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Spain', 'EUR', 'Euro', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Sweden', 'SEK', 'Krona', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Switzerland', 'CHF', 'Franc', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('Ukraine', 'UAH', 'Hryvnia', NULL);
INSERT INTO CurrencyConverter (country_name, currency_code, currency_name, currency_sign) VALUES ('United Kingdom', 'GBP', 'Pound', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

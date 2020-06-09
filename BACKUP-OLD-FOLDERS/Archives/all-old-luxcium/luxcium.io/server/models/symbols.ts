/** @format */

import mongoose from 'mongoose';

// symbol	refers to the symbol represented in Nasdaq Integrated symbology(INET).
// name	refers to the name of the company or security.
// date	refers to the date the symbol reference data was generated.
// isEnabled	will be true if the symbol is enabled for trading on IEX.
// type refers to the common issue type(AD - ADR
// RE - REIT
// CE - Closed end fund
// SI - Secondary Issue
// LP - Limited Partnerships
// CS - Common Stock
// ET - ETF)
// iexId	unique ID applied by IEX to track securities through symbol changes.

const cds = require('@sap/cds');
const xsenv = require("@sap/xsenv");
const { getBundle } = require('./common/i18n');


class CatalogService extends cds.ApplicationService {
    init() {
        xsenv.loadEnv();

        return super.init();
    }
}

module.exports = { CatalogService };

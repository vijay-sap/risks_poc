/**
 * 
 * @After(event = { "READ" }, entity = "riskManagementSrv.Risks")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(results, request) {
    if (Array.isArray(results)) {
        results.forEach(result => {
            result.criticality = result.impact > 10000 ? 1 : 2;
        });
    } else {
        results.criticality = results.impact > 10000 ? 1 : 2;
    }
}
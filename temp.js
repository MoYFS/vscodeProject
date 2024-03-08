var IncomeList = [0, 1, 2, 3, 4];
var DisbList = [0, 1, 2, 3, 4, 4, 5];
var asdas=0;
function strikingBalance() {
    var incme = 0;
    var disb = 0;
    IncomeList.forEach(function (value) {
        incme += value;
    });
    DisbList.forEach(function (value) {
        disb += value;
    });
    asdas= incme - disb;
}
strikingBalance();
console.log(asdas);

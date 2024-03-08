var IncomeList:Array<number>= [0,1,2,3,4];
var DisbList = [0, 1, 2, 3, 4, 4, 5];
function strikingBalance():number{
  let incme:number=0;
  let disb:number=0;
  IncomeList.forEach((value)=>{
    incme+=value
  })
  DisbList.forEach((value)=>{
    disb+=value
  })
  return incme-disb;
}
console.log(strikingBalance())
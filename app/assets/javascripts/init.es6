if (window.CombatAcesApp === undefined){
	window.CombatAcesApp = {};
}
CombatAcesApp.init = function(){
	console.log("Combat Aces Online");
};

$(document).on("turbolinks:load", function(){
	CombatAcesApp.init();
});
window.TeleborderApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(){
    new TeleborderApp.Routers.TeleborderAppRouter();
    Backbone.history.start();
  }
};

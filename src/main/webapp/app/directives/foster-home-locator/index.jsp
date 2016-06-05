<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <h2>Foster Home Locator</h2>

  <div class="foster-home-locator__search-input">
    <form class="form-inline">
      <div class="foster-home-locator__search-input-controls">
        <input type="text" class="form-control" placeholder="Enter zip code" ng-model="zip">
        <input type="text" class="form-control" placeholder="100 mile radius" ng-model="proximity">
        <button type="submit" class="btn btn-primary" ng-click="searchFosterHomes(zip, proximity)">Locate</button>
        <button type="button" class="btn btn-primary" ng-click="resetFosterHomes()">Reset</button>
      </div>
    </form>
  </div>

  <div class="foster-home-locator__search-map">
    <ui-gmap-google-map center='mapSettings.center' zoom='mapSettings.zoom'>
      <ui-gmap-marker ng-repeat="location in results" idKey="location.id" coords="{ latitude: location.lat, longitude: location.lng }"></ui-gmap-marker>
    </ui-gmap-google-map>
  </div>

  <div class="foster-home-locator__search-results">
  <table class="table">
    <thead>
      <tr>
        <th>Address</th>
        <th>Phone</th>
        <th>Number</th>
      </tr>
    </thead>
    <tbody>
      <tr ng-repeat="location in results">
        <td>
          <p class="foster-home-locator__result-name">{{ location.name }}"</p>
          <p class="foster-home-locator__result-address">
            <span class="foster-home-locator__result-street">{{ location.street }}</span>,
            <span class="foster-home-locator__result-city">{{ location.city }}</span>,
            <span class="foster-home-locator__result-state">{{ location.state }}</span>
          </p>
        </td>
        <td>
          <p class="foster-home-locator__result-phone">{{ location.phone }}</p>
        </td>
        <td>
          <p class="foster-home-locator__result-number">{{ location.number }}</p>
        </td>
      </tr>
    </tbody>

  </table>

</div>
</sec:authorize>

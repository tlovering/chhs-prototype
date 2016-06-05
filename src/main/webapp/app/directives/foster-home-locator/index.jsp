<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <h2>Foster Home Locator</h2>

  <div class="foster-home-locator__search-input">
    <form class="form-inline" name="fosterHomeLocatorForm" ng-click="searchFosterHomes(search.zip, search.proximity)">
      <label class="sr-only" for="foster-home-locator__zip-input">Zip Code:</label>
      <input type="number" name="zip" id="foster-home-locator__zip-input" class="foster-home-locator__search-input-control form-control" placeholder="Zip Code" ng-model="search.zip">
      <label class="sr-only" for="foster-home-locator__proximity-input">Proximity (in miles):</label>
      <input type="number" name="proximity" id="foster-home-locator__proximity-input" class="foster-home-locator__search-input-control form-control" placeholder="Proximity (in miles)" ng-model="search.proximity">
      <button type="submit" class="foster-home-locator__search-input-control btn btn-primary" ng-disabled="!search.zip && !search.proximity">Locate</button>
      <button type="button" class="foster-home-locator__search-input-control btn btn-primary" ng-click="resetFosterHomes()">Reset</button>
    </form>
  </div>

  <div class="foster-home-locator__search-map">
    <ui-gmap-google-map center='map.center' zoom='map.zoom'>
      <ui-gmap-marker ng-repeat="location in results" idKey="location.id" coords="{ latitude: location.lat, longitude: location.lng }"></ui-gmap-marker>
    </ui-gmap-google-map>
  </div>

  <div class="foster-home-locator__search-results table-responsive">
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

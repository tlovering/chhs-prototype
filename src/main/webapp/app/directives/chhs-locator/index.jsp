<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<h2>Foster Home Locator</h2>

<div class="chhs-locator__search-input">
  <form class="form-inline">
    <input type="text" class="form-control" placeholder="Enter zip code">
    <input type="text" class="form-control" placeholder="100 mile radius">
    <button type="submit" class="btn btn-primary">Locate</button>
  </form>
</div>

<div class="chhs-locator__search-map">
  <ui-gmap-google-map center='mapSettings.center' zoom='mapSettings.zoom'>
    <ui-gmap-marker ng-repeat="location in results" idKey="location.id" coords="{ latitude: location.lat, longitude: location.long }"></ui-gmap-marker>
  </ui-gmap-google-map>
</div>

<div class="chhs-locator__search-results">
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
          <p class="chhs-locator__result-name">{{ location.name }}"</p>
          <p class="chhs-locator__result-address">
            <span class="chhs-locator__result-street">{{ location.street }}</span>,
            <span class="chhs-locator__result-city">{{ location.city }}</span>,
            <span class="chhs-locator__result-state">{{ location.state }}</span>
          </p>
        </td>
        <td>
          <p class="chhs-locator__result-phone">{{ location.phone }}</p>
        </td>
        <td>
          <p class="chhs-locator__result-number">{{ location.number }}</p>
        </td>
      </tr>
    </tbody>

  </table>

</div>

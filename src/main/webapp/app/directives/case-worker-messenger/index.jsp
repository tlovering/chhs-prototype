<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<sec:authorize access="isAuthenticated()">
  <header class="clearfix">
    <h3 class="case-worker-messenger__header-text pull-left">My Messages</h3>
    <a href="#" class="case-worker-messenger__compose-link pull-right">Create New Message</a>
  </header>

  <div class="case-worker-messenger__messages panel">
    <div class="case-worker-messenger__messages-content panel-body">
      <div class="case-worker-messenger__messages-list list-group" ng-if="messages.length > 0">
        <a href class="case-worker-messenger__message list-group-item" ng-repeat="message in messages" ng-click="viewMessage(message)">
          <p class="case-worker-messenger__message-sender">{{ message.fromName }}</p>
          <p class="clearfix">
            <span class="case-worker-messenger__message-subject pull-left">{{message.subject}}</span>
            <span class="case-worker-messenger__message-date pull-right">{{ message.createdAt | date : 'M/d/yyyy' }}</span>
          </p>
          <p class="case-worker-messenger__message-contents">{{ message.content | limitTo : 150 }}...</p>
        </a>
      </div>
      <div ng-if="messages.length == 0">
        <p class="case-worker-messenger__messages-empty text-center">You have no messages.</p>
      </div>
    </div>
  </div>

  <div class="case-worker-messenger__viewer" ng-if="viewedMessage !== null">
    <div class="case-worker-messenger__viewer-message-info">
      <p class="case-worker-messenger__viewer-sender">From: {{ viewedMessage.fromName }}</p>
      <p class="case-worker-messenger__viewer-recepient">To: {{ viewedMessage.toName }}</p>
      <div class="clearfix">
        <span class="case-worker-messenger__viewer-subject pull-left">{{ viewedMessage.subject }}</span>
        <span class="case-worker-messenger__viewer-date pull-right">{{ viewedMessage.createdAt | date : 'M/d/yyyy' }}</span>
      </div>
    </div>
    <div class="case-worker-messenger__viewer-message-controls">
      <div class="clearfix">
        <a href class="case-worker-messenger__viewer-control pull-right" ng-click="deleteMessage(viewedMessage.id)">Delete</a>
        <a href class="case-worker-messenger__viewer-control case-worker-messenger__viewer-control--primary pull-right" ng-click="replyToMessage(viewedMessage.id)">Reply</a>
      </div>
    </div>
    <div class="case-worker-messenger__viewer-message">{{ viewedMessage.content }}</div>
  </div>

</sec:authorize>

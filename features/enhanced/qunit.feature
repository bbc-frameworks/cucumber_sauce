Feature: As a developer, I want widgets which pass their unit tests

Scenario Outline: Widgets pass their unit tests
Given I am on the "<widget>" qunit test page
Then the qunit tests should pass

Examples: Jquery UI Widgets
    | widget       |
    | accordion    |
    | autocomplete |
    | button       |
    | core         |
    | datepicker   |
    | dialog       |
    | draggable    |
    | droppable    |
    | position     |
    | progressbar  |
    | resizable    |
    | selectable   |
    | slider       |
    | sortable     |
    | tabs         |
    | widget       |


# Examples: Gel Widgets
    | widget        |
    | gelmodal      |



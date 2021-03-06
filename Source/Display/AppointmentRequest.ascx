<%@ Control Language="c#" AutoEventWireup="false" Inherits="Engage.Dnn.Booking.AppointmentRequest" CodeBehind="AppointmentRequest.ascx.cs" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="engage" TagName="ModuleMessage" Src="../Controls/ModuleMessage.ascx" %>
<%@ Register TagPrefix="engage" Namespace="Engage.Controls" Assembly="Engage.Framework" %>
<engage:ModuleMessage runat="server" ID="SuccessModuleMessage" MessageType="Success" TextResourceKey="AddEventSuccess" CssClass="RequestAppointmentSuccessMessage" Visible="false" />
<asp:Panel ID="AppointmentRequestPanel" runat="server" class="booking-request Normal">
    <h2 class="Head"><%=Localize("Service Request Form")%></h2>
    <p class="note Normal">
        <%=Localize("RequiredLabelStart.Text") %><asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" /><%=Localize("RequiredLabelEnd.Text") %>
    </p>
	<div class="ar-wrap details-wrap">    
        <fieldset>
            <legend class="SubHead"><%=Localize("Interpreting Event")%></legend>
            <ol class="interpreting-form">
                <li>
                    <div class="event-type">
                        <asp:Label CssClass="event-type-label" ResourceKey="EventTypeLabel" runat="server" AssociatedControlId="AppointmentTypeDropDownList" />
                        <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                        <asp:DropDownList ID="AppointmentTypeDropDownList" CssClass="event-type-box short" runat="server" />
                    </div>
                    <div class="title">
                        <asp:Label CssClass="title-label" runat="server" ResourceKey="TitleLabel" AssociatedControlId="TitleTextBox" />
                        <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                        <asp:TextBox ID="TitleTextBox" CssClass="title-box full NormalTextBox" runat="server" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TitleTextBox" ResourceKey="TitleRequiredValidator" Display="None" EnableClientScript="false" />
                    </div>
                </li>
                <li class="description">
                    <asp:Label CssClass="description-label" runat="server" ResourceKey="DescriptionLabel" AssociatedControlId="DescriptionTextBox" />
                    <asp:TextBox ID="DescriptionTextBox" CssClass="description-box full NormalTextBox" runat="server" TextMode="MultiLine" Rows="4" Columns="40" />
                </li>
                <li class="notes">
                    <asp:Label CssClass="considerations-label" runat="server" ResourceKey="ConsiderationsLabel" AssociatedControlId="NotesTextBox" />
                    <asp:TextBox ID="NotesTextBox" CssClass="notes-box full NormalTextBox" runat="server" TextMode="MultiLine" Rows="4" Columns="40" />
                </li>
            </ol>
            <fieldset class="addr-legend">
                <legend><asp:Label ResourceKey="AddressLabel" runat="server" /></legend>
                <ol class="interpreting-form-b">
                    <li class="street">
                        <asp:Label CssClass="street-label" runat="server" ResourceKey="StreetLabel" AssociatedControlId="StreetTextBox" />
                        <asp:TextBox ID="StreetTextBox" CssClass="street-box long NormalTextBox" runat="server" />
                        <asp:TextBox ID="RoomTextBox" CssClass="room-box small inline-label NormalTextBox" runat="server" />
                    </li>
                    <li class="city">
                        <asp:Label CssClass="city-label" runat="server" ResourceKey="CityLabel" AssociatedControlId="CityTextBox" />
                        <asp:TextBox ID="CityTextBox" CssClass="city-box long NormalTextBox" runat="server" />
                        <asp:DropDownList ID="RegionDropDownList" runat="server" CssClass="state-list short inline-label default-inline-value"></asp:DropDownList>
                        <asp:TextBox ID="PostalCodeTextBox" CssClass="zip-box small inline-label NormalTextBox" runat="server" />
                    </li>
                    <li class="nearest">
                        <asp:Label CssClass="nearest-label" runat="server" ResourceKey="NearestLabel" AssociatedControlId="AdditionalAddressInfoTextBox" />
                        <asp:TextBox ID="AdditionalAddressInfoTextBox" CssClass="nearest-box long NormalTextBox" runat="server" />
                    </li>
                </ol>
			</fieldset>
            <fieldset class="onsite-legend">
                <legend><asp:Label ResourceKey="OnSiteContactLabel" runat="server" /></legend>
                <ol class="interpreting-form-c">
                    <li class="onsite-name">
                        <asp:Label CssClass="onsite-name-label" runat="server" ResourceKey="NameLabel" AssociatedControlId="OnsiteNameTextBox" />
                        <asp:TextBox ID="OnsiteNameTextBox" CssClass="onsite-name-box long NormalTextBox" runat="server" />
                    </li>
                    <li class="phone">
                        <asp:Label CssClass="phone-label" runat="server" ResourceKey="PhoneLabel" AssociatedControlId="OnsitePhoneTextBox" />
                        <asp:TextBox ID="OnsitePhoneTextBox" CssClass="phone-box long NormalTextBox" runat="server" />
                    </li>
                </ol>
			</fieldset>
        </fieldset>
    </div>
	<div class="ar-wrap requesting-wrap">
        <fieldset>
            <legend class="SubHead"><asp:Label ResourceKey="InterpretingServicesLabel.Text" runat="server" /></legend>
            <ol class="requesting-form">
                <li class="full-name">
                    <asp:Label ID="RequestorNameLabel" CssClass="full-name-label" runat="server" ResourceKey="FullNameLabel.Text" AssociatedControlId="RequestorNameTextBox" />
                    <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                    <asp:TextBox ID="RequestorNameTextBox" CssClass="full-name-box long NormalTextBox" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="RequestorNameTextBox" ResourceKey="FullNameRequiredValidator" Display="None" EnableClientScript="false" />
                </li>
                <li class="phone">
                    <asp:Label CssClass="phone-label" runat="server" ResourceKey="RequestorPhoneLabel.Text" AssociatedControlId="RequestorPhoneTextBox" />
                    <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                    <asp:TextBox ID="RequestorPhoneTextBox" CssClass="phone-box long NormalTextBox" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="RequestorPhoneTextBox" ResourceKey="RequestorPhoneRequiredValidator" Display="None" EnableClientScript="false" />
					<asp:DropDownList ID="RequestorPhoneTypeDropDownList" runat="server"/>
                </li>
                <li class="alt-phone">
                    <asp:Label CssClass="alt-phone-label" runat="server" ResourceKey="AltPhoneLabel" AssociatedControlId="RequestorAltPhoneTextBox" />
                    <asp:TextBox ID="RequestorAltPhoneTextBox" CssClass="alt-phone-box long NormalTextBox" runat="server" />
					<asp:DropDownList ID="RequestorAltPhoneTypeDropDownList" runat="server"/>
                </li>
                <li class="email">
                    <asp:Label CssClass="email-label" runat="server" ResourceKey="EmailAddressLabel" AssociatedControlId="RequestorEmailTextBox" />
                    <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                    <asp:TextBox ID="RequestorEmailTextBox" CssClass="email-box full NormalTextBox" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="RequestorEmailTextBox" ResourceKey="RequestorEmailRequiredValidator" Display="None" EnableClientScript="false" />
                    <asp:RegularExpressionValidator ID="RequestorEmailFormatValidator" runat="server" ControlToValidate="RequestorEmailTextBox" ResourceKey="RequestorEmailFormatValidator" Display="None" EnableClientScript="false" />
                </li>
            </ol>
        </fieldset>
	</div>
	<div class="ar-wrap date-assignment-wrap">
        <fieldset>
            <legend class="SubHead"><asp:Label ResourceKey="AssignmentDateLabel.Text" runat="server" /></legend>
            <ol class="date-assignment-form">
                <li class="start">
                    <asp:Label CssClass="start-label" runat="server" ResourceKey="StartLabel" AssociatedControlId="StartDateTimePicker" />
                    <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                    <telerik:RadDateTimePicker runat="server" ID="StartDateTimePicker">
                        <Calendar ShowRowHeaders="false" />
                        <ClientEvents OnDateSelected="StartDateTimePicker_DateSelected" />
                    </telerik:RadDateTimePicker>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="StartDateTimePicker" ResourceKey="StartDateTimePickerRequired" Display="None" EnableClientScript="false" />
                </li>
                <li class="end">
                    <asp:Label CssClass="end-label" runat="server" ResourceKey="EndLabel" AssociatedControlId="EndDateTimePicker" />
                    <asp:Label runat="server" ResourceKey="Required Label" CssClass="required-label" />
                    <telerik:RadDateTimePicker runat="server" ID="EndDateTimePicker">
                        <Calendar ShowRowHeaders="false" />
                    </telerik:RadDateTimePicker>
                    <asp:CompareValidator runat="server" Display="None" EnableClientScript="false" ControlToCompare="StartDateTimePicker" ControlToValidate="EndDateTimePicker" ResourceKey="EndDateCompareValidator" Operator="GreaterThan" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="EndDateTimePicker" ResourceKey="EndDateTimePickerRequired" Display="None" EnableClientScript="false" />
                    <asp:CustomValidator ID="DurationValidator" runat="server" CssClass="NormalRed" Display="None" />
                </li>
                <li class="timezone">
                    <asp:Label runat="server" ResourceKey="EventTimeZoneLabel" CssClass="timezone-label" AssociatedControlID="TimeZoneDropDownList" />
                    <div class="timezone_display">
                        <asp:DropDownList runat="server" ID="TimeZoneDropDownList" CssClass="timezone-dropdown full" />
                        <div class="Normal">
                            <asp:CheckBox runat="server" ID="InDaylightTimeCheckBox" CssClass="timezone-checkbox" ResourceKey="EventTimeZoneCheckBox" />
                        </div>
                    </div>
                </li>
            </ol>
        </fieldset>
	</div>
	<div class="ar-wrap participants-wrap">
        <fieldset>
            <legend class="SubHead"><asp:Label ResourceKey="ParticipantsLabel.Text" runat="server" /></legend>
            <ol class="participants-form">
                <li class="number-special">
                    <asp:Label CssClass="number-special-label" runat="server" ResourceKey="NumberSpecialLabel" AssociatedControlId="NumberOfSpecialParticipantsTextBox" />
                    <asp:TextBox ID="NumberOfSpecialParticipantsTextBox" CssClass="number-special-box short NormalTextBox" runat="server" />
                    <asp:CompareValidator runat="server" ControlToValidate="NumberOfSpecialParticipantsTextBox" ResourceKey="NumberOfSpecialParticipantsFormatValidator" Operator="DataTypeCheck" Type="Integer" Display="None" EnableClientScript="false" />
                    
                    <asp:Label CssClass="total-number-label" runat="server" ResourceKey="TotalNumberLabel" AssociatedControlId="TotalNumberParticipantsTextBox" />
                    <asp:TextBox ID="TotalNumberParticipantsTextBox" CssClass="total-number-box short NormalTextBox" runat="server" />
                    <asp:CompareValidator runat="server" ControlToValidate="TotalNumberParticipantsTextBox" ResourceKey="TotalNumberOfParticipantsFormatValidator" Operator="DataTypeCheck" Type="Integer" Display="None" EnableClientScript="false" />
                    <asp:CompareValidator runat="server" ControlToValidate="TotalNumberParticipantsTextBox" ControlToCompare="NumberOfSpecialParticipantsTextBox" ResourceKey="TotalNumberOfParticipantsCompareValidator.Text" Operator="GreaterThanEqual" Type="Integer" Display="None" EnableClientScript="false" />
                </li>
                <li class="gender">
                    <asp:Label CssClass="gender-label" runat="server" ResourceKey="GenderLabel" AssociatedControlId="GenderDropDownList" />
                    <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="gender-list short" runat="server" />
                    <asp:Label CssClass="presenter-label" runat="server" ResourceKey="PresenterLabel" AssociatedControlId="PresenterDropDownList" />
                    <asp:DropDownList ID="PresenterDropDownList" CssClass="presenter-box short" runat="server"/>
                </li>
                <li class="instructions">
                    <asp:Label CssClass="instructions-label" runat="server" ResourceKey="InstructionsLabel" AssociatedControlId="InstructionsTextBox" />
                    <asp:TextBox ID="InstructionsTextBox" CssClass="instructions-box full NormalTextBox" runat="server" TextMode="MultiLine" Rows="4" Columns="40" />
                </li>
            </ol>
        </fieldset>
	</div>        
	<div class="ar-wrap customfields-wrap">
        <fieldset class="customfields-fieldset">
            <legend class="SubHead"><asp:Label ResourceKey="CustomFieldsLabel.Text" runat="server" /></legend>
            <ol class="customfields-form">
                <li class="customfield1">
                    <asp:Label CssClass="customfield1-label" runat="server" ResourceKey="CustomField1Label.Text" AssociatedControlId="CustomField1TextBox" />
                    <asp:TextBox ID="CustomField1TextBox" CssClass="customfield1-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield2">
                    <asp:Label CssClass="customfield2-label" runat="server" ResourceKey="CustomField2Label.Text" AssociatedControlId="CustomField2TextBox" />
                    <asp:TextBox ID="CustomField2TextBox" CssClass="customfield2-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield3">
                    <asp:Label CssClass="customfield3-label" runat="server" ResourceKey="CustomField3Label.Text" AssociatedControlId="CustomField3TextBox" />
                    <asp:TextBox ID="CustomField3TextBox" CssClass="customfield3-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield4">
                    <asp:Label CssClass="customfield4-label" runat="server" ResourceKey="CustomField4Label.Text" AssociatedControlId="CustomField4TextBox" />
                    <asp:TextBox ID="CustomField4TextBox" CssClass="customfield4-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield5">
                    <asp:Label CssClass="customfield5-label" runat="server" ResourceKey="CustomField5Label.Text" AssociatedControlId="CustomField5TextBox" />
                    <asp:TextBox ID="CustomField5TextBox" CssClass="customfield5-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield6">
                    <asp:Label CssClass="customfield6-label" runat="server" ResourceKey="CustomField6Label.Text" AssociatedControlId="CustomField6TextBox" />
                    <asp:TextBox ID="CustomField6TextBox" CssClass="customfield6-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield7">
                    <asp:Label CssClass="customfield7-label" runat="server" ResourceKey="CustomField7Label.Text" AssociatedControlId="CustomField7TextBox" />
                    <asp:TextBox ID="CustomField7TextBox" CssClass="customfield7-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield8">
                    <asp:Label CssClass="customfield8-label" runat="server" ResourceKey="CustomField8Label.Text" AssociatedControlId="CustomField8TextBox" />
                    <asp:TextBox ID="CustomField8TextBox" CssClass="customfield8-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield9">
                    <asp:Label CssClass="customfield9-label" runat="server" ResourceKey="CustomField9Label.Text" AssociatedControlId="CustomField9TextBox" />
                    <asp:TextBox ID="CustomField9TextBox" CssClass="customfield9-box full NormalTextBox" runat="server" />
                </li>
                <li class="customfield10">
                    <asp:Label CssClass="customfield10-label" runat="server" ResourceKey="CustomField10Label.Text" AssociatedControlId="CustomField10TextBox" />
                    <asp:TextBox ID="CustomField10TextBox" CssClass="customfield10-box full NormalTextBox" runat="server" />
                </li>
            </ol>
        </fieldset>
	</div>
</asp:Panel>
<engage:ValidationSummary runat="server" CssClass="NormalRed" />
<asp:CustomValidator ID="UniqueTimeslotValidator" runat="server" Display="None" ResourceKey="UniqueTimeslotValidator.Text" />
<div class="AdminButtons FooterButtons">
    <asp:MultiView ID="FooterButtonsMultiview" runat="server" ActiveViewIndex="0">
        <asp:View ID="SaveView" runat="server">
            <asp:Button ID="SaveAppointmentButton" runat="server" CssClass="CommandButton primary-btn" ResourceKey="Save.Text" />
            <asp:Button ID="CancelAppointmentButton" runat="server" CssClass="CommandButton secondary-btn" ResourceKey="Cancel & Go Home.Text" />
            <asp:Button ID="SaveAndCreateNewAppointmentButton" runat="server" CssClass="CommandButton primary-btn" ResourceKey="Save & Create New.Text" />
        </asp:View>
        <asp:View ID="SuccessView" runat="server">
            <asp:Button ID="HomeButton" runat="server" CssClass="CommandButton primary-btn" ResourceKey="Home.Text" />
            <asp:Button ID="CreateNewAppointmentButton" runat="server" CssClass="CommandButton primary-btn" ResourceKey="Create New.Text" />
        </asp:View>
    </asp:MultiView>
</div>

<script type="text/javascript">
    function StartDateTimePicker_DateSelected(sender, eventArgs) {
        var EndDateTimePicker = $find("<%= EndDateTimePicker.ClientID %>");

        // don't update end date if there's already an end date but not an old start date
        if (EndDateTimePicker.isEmpty() || eventArgs.get_oldDate() || EndDateTimePicker.get_selectedDate() <= eventArgs.get_newDate()) {
            var selectedDateSpan = 1800000; // 30 minutes
            if (!EndDateTimePicker.isEmpty() && EndDateTimePicker.get_selectedDate() > eventArgs.get_newDate()) {
                selectedDateSpan = EndDateTimePicker.get_selectedDate() - eventArgs.get_oldDate();
            }

            EndDateTimePicker.set_selectedDate(new Date(eventArgs.get_newDate().getTime() + selectedDateSpan));
        }
    }

    (function($) {
        $(function() {
            $('.inline-label').each(function() {
                var $this = $(this);
                $this.addClass('default-inline-value')
					.data('original-text', $this.val());
            }).focus(function() {
                var $this = $(this);
                if ($this.val() === $this.data('original-text')) {
                    $this.val('');
                    $this.removeClass('default-inline-value');
                }
            }).blur(function() {
                var $this = $(this);
                if (!$this.val() || $this.val() === $this.data('original-text')) {
                    $this.val($this.data('original-text'));
                    $this.addClass('default-inline-value');
                }
            });
        });
    })(jQuery);
</script>
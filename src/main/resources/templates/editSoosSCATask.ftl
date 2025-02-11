[@ww.textfield label="Project Name" name="projectName" value=projectName required='true'/]
[@ww.select label="Mode" listKey="key" listValue="value" list=modes name="mode" value=mode toggle=true
    onchange="sendModeAndCleanField(this.value)" /]
[@ww.textfield id="reportStatusURL" label="Report Status Url" name="reportStatusUrl" value=reportStatusUrl /]
<label style="color: darkgray;font-size: 12px">Insert here the URL returned in the async init mode</label>
[@ww.select label="On Failure" listKey="key" listValue="value" list=onFailureOptions name="onFailure" value=onFailure toggle=true /]
[@ww.select label="Operating Environment" listKey="key" listValue="value" list=operatingEnvironmentOptions name="operatingEnvironment" value=operatingEnvironment toggle=true /]
[@ww.textfield label="Files To Exclude" name="filesToExclude" value=filesToExclude /]
<label style="color: darkgray;font-size: 12px">Separate the file names with a comma</label>
[@ww.textfield label="Directories To Exclude" name="dirsToExclude" value=dirsToExclude /]
<label style="color: darkgray;font-size: 12px">Separate the directory names with a comma</label>
[@ww.textfield label="Analysis Result Max Wait" name="analysisResultMaxWait" default=analysisResultMaxWait /]
[@ww.textfield label="Analysis Result Pooling Interval" name="analysisResultPollingInterval" default=analysisResultPollingInterval/]
[@ww.textfield label="API Base URL" name="apiBaseURI" default=apiBaseURI/]
[@ww.textfield label="Branch Name" name="branchName" value=branchName/]
[@ww.textfield label="Branch URI" name="branchURI" value=branchURI /]
[@ww.textfield label="Commit Hash" name="commitHash" value=commitHash /]
[@ww.textfield label="Build Version" name="buildVersion" value=buildVersion /]
[@ww.textfield label="Build URI" name="buildURI" value=buildURI /]

<script type="text/javascript">
    function sendModeAndCleanField(mode) {
        if ( mode !== 'async_result') {
            document.getElementById("reportStatusURL").value = '';
        }
    }
</script>
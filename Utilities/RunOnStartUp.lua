-- able to extend and move LEGACY (hence pcall) chat
local _, __ = pcall(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/svqRbx2n", true))()
end)

-- security (ig?) (Better to be ran in autoexec!!!!)
local flagstuff = {
    AbuseReportScreenshot = false,
    AbuseReportScreenshotPercentage = 0,
    CrashPadUploadToBacktraceToBacktraceBaseUrl = false,
    CrashUploadToBacktracePercentage = 0,
    CrashUploadToBacktraceBlackholeToken = false,
    CrashUploadToBacktraceWindowsPlayerToken = 0
}
for flag, value in pairs(flagstuff) do
    setfflag(flag, tostring(value))
end

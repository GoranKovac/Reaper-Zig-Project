const MediaTrack = *opaque {};
const MediaItem = *opaque {};
const ReaProject = *opaque {};
const MediaItem_Take = *opaque {};
const audio_hook_register_t = *opaque {};
const AudioAccessor = *opaque {};
const PCM_source_transfer_t = *opaque {};
const PCM_source_peaktransfer_t = *opaque {};
const KbdSectionInfo = *opaque {};
const TrackEnvelope = *opaque {};
const midi_Input = *opaque {};
const midi_Output = *opaque {};
const IReaperControlSurface = *opaque {};
const HWND = *opaque {};
const RECT = *opaque {};
const GUID = *opaque {};
const INT_PTR = *opaque {};
const HMENU = *opaque {};
const PCM_source = *opaque {};
const LICE_IBitmap = *opaque {};
const joystick_device = *opaque {};
const ACCEL = *opaque {};
const DWORD = *opaque {};
const MIDI_event_t = *opaque {};
const MIDI_eventlist = *opaque {};
const MSG = *opaque {};
const LICE_IFont = *opaque {};
const UINT = *opaque {};
const HDC = *opaque {};
const LICE_pixel = *opaque {};
const HFONT = *opaque {};
const LICE_pixel_chan = *opaque {};
const HINSTANCE = *opaque {};
const PCM_sink = *opaque {};
const ISimpleMediaDecoder = *opaque {};
const REAPER_PeakBuild_Interface = *opaque {};
const REAPER_PeakGet_Interface = *opaque {};
const preview_register_t = *opaque {};
const IReaperPitchShift = *opaque {};
const REAPER_Resample_Interface = *opaque {};
const screensetNewCallbackFunc = *opaque {};
const WDL_VirtualWnd_BGCfg = *opaque {};

pub const fnPtrs = struct {
	pub var __mergesort: *fn (base: ?*anyopaque,  nmemb: usize, size: usize, cmpfunc: ?*fn(*const anyopaque, *const anyopaque) callconv(.C) c_int, tmpspace: ?*anyopaque) callconv(.C) void = undefined;
	pub var AddCustomizableMenu: *fn (menuidstr: [*:0]const u8, menuname: [*:0]const u8, kbdsecname: [*:0]const u8, addtomainmenu: bool) callconv(.C) bool = undefined;
	pub var AddExtensionsMainMenu: *fn () callconv(.C) bool = undefined;
	pub var AddMediaItemToTrack: *fn (tr: *MediaTrack) callconv(.C) ?*anyopaque = undefined;
	pub var AddProjectMarker: *fn (proj: *ReaProject, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, wantidx: c_int) callconv(.C) c_int = undefined;
	pub var AddProjectMarker2: *fn (proj: *ReaProject, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, wantidx: c_int, color: c_int) callconv(.C) c_int = undefined;
	pub var AddRemoveReaScript: *fn (add: bool, sectionID: c_int, scriptfn: [*:0]const u8, commit: bool) callconv(.C) c_int = undefined;
	pub var AddTakeToMediaItem: *fn (item: *MediaItem) callconv(.C) ?*anyopaque = undefined;
	pub var AddTempoTimeSigMarker: *fn (proj: *ReaProject, timepos: f64, bpm: f64, timesig_num: c_int, timesig_denom: c_int, lineartempochange: bool) callconv(.C) bool = undefined;
	pub var adjustZoom: *fn (amt: f64, forceset: c_int, doupd: bool, centermode: c_int) callconv(.C) void  = undefined;
	pub var AnyTrackSolo: *fn (proj: *ReaProject) callconv(.C) bool = undefined;
	pub var APIExists: *fn (function_name: [*:0]const u8) callconv(.C) bool = undefined;
	pub var APITest: *fn () callconv(.C) void  = undefined;
	pub var ApplyNudge: *fn (project: *ReaProject, nudgeflag: c_int, nudgewhat: c_int, nudgeunits: c_int, value: f64, reverse: bool, copies: c_int) callconv(.C) bool = undefined;
	pub var ArmCommand: *fn (cmd: c_int, sectionname: [*:0]const u8) callconv(.C) void  = undefined;
	pub var Audio_Init: *fn () callconv(.C) void  = undefined;
	pub var Audio_IsPreBuffer: *fn () callconv(.C) c_int = undefined;
	pub var Audio_IsRunning: *fn () callconv(.C) c_int = undefined;
	pub var Audio_Quit: *fn () callconv(.C) void  = undefined;
	pub var Audio_RegHardwareHook: *fn (isAdd: bool, reg: *audio_hook_register_t) callconv(.C) c_int = undefined;
	pub var AudioAccessorStateChanged: *fn (accessor: *AudioAccessor) callconv(.C) bool = undefined;
	pub var AudioAccessorUpdate: *fn (accessor: *AudioAccessor) callconv(.C) void  = undefined;
	pub var AudioAccessorValidateState: *fn (accessor: *AudioAccessor) callconv(.C) bool = undefined;
	pub var BypassFxAllTracks: *fn (bypass: c_int) callconv(.C) void  = undefined;
	pub var CalculatePeaks: *fn (srcBlock: *PCM_source_transfer_t, pksBlock: *PCM_source_peaktransfer_t) callconv(.C) c_int = undefined;
	pub var CalculatePeaksFloatSrcPtr: *fn (srcBlock: *PCM_source_transfer_t, pksBlock: *PCM_source_peaktransfer_t) callconv(.C) c_int = undefined;
	pub var ClearAllRecArmed: *fn () callconv(.C) void  = undefined;
	pub var ClearConsole: *fn () callconv(.C) void  = undefined;
	pub var ClearPeakCache: *fn () callconv(.C) void  = undefined;
	pub var ColorFromNative: *fn (col: c_int, rOut: *c_int, gOut: *c_int, bOut: *c_int) callconv(.C) void  = undefined;
	pub var ColorToNative: *fn (r: c_int, g: c_int, b: c_int) callconv(.C) c_int = undefined;
	pub var CountActionShortcuts: *fn (section: *KbdSectionInfo, cmdID: c_int) callconv(.C) c_int = undefined;
	pub var CountAutomationItems: *fn (env: *TrackEnvelope) callconv(.C) c_int = undefined;
	pub var CountEnvelopePoints: *fn (envelope: *TrackEnvelope) callconv(.C) c_int = undefined;
	pub var CountEnvelopePointsEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int) callconv(.C) c_int = undefined;
	pub var CountMediaItems: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var CountProjectMarkers: *fn (proj: *ReaProject, num_markersOut: *c_int, num_regionsOut: *c_int) callconv(.C) c_int = undefined;
	pub var CountSelectedMediaItems: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var CountSelectedTracks: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var CountSelectedTracks2: *fn (proj: *ReaProject, wantmaster: bool) callconv(.C) c_int = undefined;
	pub var CountTakeEnvelopes: *fn (take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var CountTakes: *fn (item: *MediaItem) callconv(.C) c_int = undefined;
	pub var CountTCPFXParms: *fn (project: *ReaProject, track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var CountTempoTimeSigMarkers: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var CountTrackEnvelopes: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var CountTrackMediaItems: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var CountTracks: *fn (projOptional: *ReaProject) callconv(.C) c_int = undefined;
	pub var CreateLocalOscHandler: *fn (obj: *anyopaque, callback: *anyopaque) callconv(.C) ?*anyopaque = undefined;
	pub var CreateMIDIInput: *fn (dev: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var CreateMIDIOutput: *fn (dev: c_int, streamMode: bool, msoffset100: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var CreateNewMIDIItemInProj: *fn (track: *MediaTrack, starttime: f64, endtime: f64, qnInOptional: *const bool) callconv(.C) ?*anyopaque = undefined;
	pub var CreateTakeAudioAccessor: *fn (take: *MediaItem_Take) callconv(.C) ?*anyopaque = undefined;
	pub var CreateTrackAudioAccessor: *fn (track: *MediaTrack) callconv(.C) ?*anyopaque = undefined;
	pub var CreateTrackSend: *fn (tr: *MediaTrack, desttrInOptional: *MediaTrack) callconv(.C) c_int = undefined;
	pub var CSurf_FlushUndo: *fn (force: bool) callconv(.C) void  = undefined;
	pub var CSurf_GetTouchState: *fn (trackid: *MediaTrack, isPan: c_int) callconv(.C) bool = undefined;
	pub var CSurf_GoEnd: *fn () callconv(.C) void  = undefined;
	pub var CSurf_GoStart: *fn () callconv(.C) void  = undefined;
	pub var CSurf_NumTracks: *fn (mcpView: bool) callconv(.C) c_int = undefined;
	pub var CSurf_OnArrow: *fn (whichdir: c_int, wantzoom: bool) callconv(.C) void  = undefined;
	pub var CSurf_OnFwd: *fn (seekplay: c_int) callconv(.C) void  = undefined;
	pub var CSurf_OnFXChange: *fn (trackid: *MediaTrack, en: c_int) callconv(.C) bool = undefined;
	pub var CSurf_OnInputMonitorChange: *fn (trackid: *MediaTrack, monitor: c_int) callconv(.C) c_int = undefined;
	pub var CSurf_OnInputMonitorChangeEx: *fn (trackid: *MediaTrack, monitor: c_int, allowgang: bool) callconv(.C) c_int = undefined;
	pub var CSurf_OnMuteChange: *fn (trackid: *MediaTrack, mute: c_int) callconv(.C) bool = undefined;
	pub var CSurf_OnMuteChangeEx: *fn (trackid: *MediaTrack, mute: c_int, allowgang: bool) callconv(.C) bool = undefined;
	pub var CSurf_OnOscControlMessage: *fn (msg: [*:0]const u8, arg: *f32) callconv(.C) void  = undefined;
	pub var CSurf_OnPanChange: *fn (trackid: *MediaTrack, pan: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnPanChangeEx: *fn (trackid: *MediaTrack, pan: f64, relative: bool, allowGang: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnPause: *fn () callconv(.C) void  = undefined;
	pub var CSurf_OnPlay: *fn () callconv(.C) void  = undefined;
	pub var CSurf_OnPlayRateChange: *fn (playrate: f64) callconv(.C) void  = undefined;
	pub var CSurf_OnRecArmChange: *fn (trackid: *MediaTrack, recarm: c_int) callconv(.C) bool = undefined;
	pub var CSurf_OnRecArmChangeEx: *fn (trackid: *MediaTrack, recarm: c_int, allowgang: bool) callconv(.C) bool = undefined;
	pub var CSurf_OnRecord: *fn () callconv(.C) void  = undefined;
	pub var CSurf_OnRecvPanChange: *fn (trackid: *MediaTrack, recv_index: c_int, pan: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnRecvVolumeChange: *fn (trackid: *MediaTrack, recv_index: c_int, volume: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnRew: *fn (seekplay: c_int) callconv(.C) void  = undefined;
	pub var CSurf_OnRewFwd: *fn (seekplay: c_int, dir: c_int) callconv(.C) void  = undefined;
	pub var CSurf_OnScroll: *fn (xdir: c_int, ydir: c_int) callconv(.C) void  = undefined;
	pub var CSurf_OnSelectedChange: *fn (trackid: *MediaTrack, selected: c_int) callconv(.C) bool = undefined;
	pub var CSurf_OnSendPanChange: *fn (trackid: *MediaTrack, send_index: c_int, pan: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnSendVolumeChange: *fn (trackid: *MediaTrack, send_index: c_int, volume: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnSoloChange: *fn (trackid: *MediaTrack, solo: c_int) callconv(.C) bool = undefined;
	pub var CSurf_OnSoloChangeEx: *fn (trackid: *MediaTrack, solo: c_int, allowgang: bool) callconv(.C) bool = undefined;
	pub var CSurf_OnStop: *fn () callconv(.C) void  = undefined;
	pub var CSurf_OnTempoChange: *fn (bpm: f64) callconv(.C) void  = undefined;
	pub var CSurf_OnTrackSelection: *fn (trackid: *MediaTrack) callconv(.C) void  = undefined;
	pub var CSurf_OnVolumeChange: *fn (trackid: *MediaTrack, volume: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnVolumeChangeEx: *fn (trackid: *MediaTrack, volume: f64, relative: bool, allowGang: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnWidthChange: *fn (trackid: *MediaTrack, width: f64, relative: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnWidthChangeEx: *fn (trackid: *MediaTrack, width: f64, relative: bool, allowGang: bool) callconv(.C) f64 = undefined;
	pub var CSurf_OnZoom: *fn (xdir: c_int, ydir: c_int) callconv(.C) void  = undefined;
	pub var CSurf_ResetAllCachedVolPanStates: *fn () callconv(.C) void  = undefined;
	pub var CSurf_ScrubAmt: *fn (amt: f64) callconv(.C) void  = undefined;
	pub var CSurf_SetAutoMode: *fn (mode: c_int, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetPlayState: *fn (play: bool, pause: bool, rec: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetRepeatState: *fn (rep: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfaceMute: *fn (trackid: *MediaTrack, mute: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfacePan: *fn (trackid: *MediaTrack, pan: f64, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfaceRecArm: *fn (trackid: *MediaTrack, recarm: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfaceSelected: *fn (trackid: *MediaTrack, selected: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfaceSolo: *fn (trackid: *MediaTrack, solo: bool, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetSurfaceVolume: *fn (trackid: *MediaTrack, volume: f64, ignoresurf: *IReaperControlSurface) callconv(.C) void  = undefined;
	pub var CSurf_SetTrackListChange: *fn () callconv(.C) void  = undefined;
	pub var CSurf_TrackFromID: *fn (idx: c_int, mcpView: bool) callconv(.C) ?*anyopaque = undefined;
	pub var CSurf_TrackToID: *fn (track: *MediaTrack, mcpView: bool) callconv(.C) c_int = undefined;
	pub var DB2SLIDER: *fn (x: f64) callconv(.C) f64 = undefined;
	pub var DeleteActionShortcut: *fn (section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int) callconv(.C) bool = undefined;
	pub var DeleteEnvelopePointEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int) callconv(.C) bool = undefined;
	pub var DeleteEnvelopePointRange: *fn (envelope: *TrackEnvelope, time_start: f64, time_end: f64) callconv(.C) bool = undefined;
	pub var DeleteEnvelopePointRangeEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, time_start: f64, time_end: f64) callconv(.C) bool = undefined;
	pub var DeleteExtState: *fn (section: [*:0]const u8, key: [*:0]const u8, persist: bool) callconv(.C) void  = undefined;
	pub var DeleteProjectMarker: *fn (proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool) callconv(.C) bool = undefined;
	pub var DeleteProjectMarkerByIndex: *fn (proj: *ReaProject, markrgnidx: c_int) callconv(.C) bool = undefined;
	pub var DeleteTakeMarker: *fn (take: *MediaItem_Take, idx: c_int) callconv(.C) bool = undefined;
	pub var DeleteTakeStretchMarkers: *fn (take: *MediaItem_Take, idx: c_int, countInOptional: *c_int) callconv(.C) c_int = undefined;
	pub var DeleteTempoTimeSigMarker: *fn (project: *ReaProject, markerindex: c_int) callconv(.C) bool = undefined;
	pub var DeleteTrack: *fn (tr: *MediaTrack) callconv(.C) void  = undefined;
	pub var DeleteTrackMediaItem: *fn (tr: *MediaTrack, it: *MediaItem) callconv(.C) bool = undefined;
	pub var DestroyAudioAccessor: *fn (accessor: *AudioAccessor) callconv(.C) void  = undefined;
	pub var DestroyLocalOscHandler: *fn (local_osc_handler: *anyopaque) callconv(.C) void  = undefined;
	pub var DoActionShortcutDialog: *fn (hwnd: HWND, section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int) callconv(.C) bool = undefined;
	pub var Dock_UpdateDockID: *fn (ident_str: [*:0]const u8, whichDock: c_int) callconv(.C) void  = undefined;
	pub var DockGetPosition: *fn (whichDock: c_int) callconv(.C) c_int = undefined;
	pub var DockIsChildOfDock: *fn (hwnd: HWND, isFloatingDockerOut: *bool) callconv(.C) c_int = undefined;
	pub var DockWindowActivate: *fn (hwnd: HWND) callconv(.C) void  = undefined;
	pub var DockWindowAdd: *fn (hwnd: HWND, name: [*:0]const u8, pos: c_int, allowShow: bool) callconv(.C) void  = undefined;
	pub var DockWindowAddEx: *fn (hwnd: HWND, name: [*:0]const u8, identstr: [*:0]const u8, allowShow: bool) callconv(.C) void  = undefined;
	pub var DockWindowRefresh: *fn () callconv(.C) void  = undefined;
	pub var DockWindowRefreshForHWND: *fn (hwnd: HWND) callconv(.C) void  = undefined;
	pub var DockWindowRemove: *fn (hwnd: HWND) callconv(.C) void  = undefined;
	pub var DuplicateCustomizableMenu: *fn (srcmenu: *anyopaque, destmenu: *anyopaque) callconv(.C) bool = undefined;
	pub var EditTempoTimeSigMarker: *fn (project: *ReaProject, markerindex: c_int) callconv(.C) bool = undefined;
	pub var EnsureNotCompletelyOffscreen: *fn (rInOut: *RECT) callconv(.C) void  = undefined;
	pub var EnumerateFiles: *fn (path: [*:0]const u8, fileindex: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var EnumerateSubdirectories: *fn (path: [*:0]const u8, subdirindex: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var EnumPitchShiftModes: *fn (mode: c_int, strOut: [*:0]const u8) callconv(.C) bool = undefined;
	pub var EnumPitchShiftSubModes: *fn (mode: c_int, submode: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var EnumProjectMarkers: *fn (idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int) callconv(.C) c_int = undefined;
	pub var EnumProjectMarkers2: *fn (proj: *ReaProject, idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int) callconv(.C) c_int = undefined;
	pub var EnumProjectMarkers3: *fn (proj: *ReaProject, idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int, colorOut: *c_int) callconv(.C) c_int = undefined;
	pub var EnumProjects: *fn (idx: c_int, projfnOutOptional: [*:0]u8, projfnOutOptional_sz: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var EnumProjExtState: *fn (proj: *ReaProject, extname: [*:0]const u8, idx: c_int, keyOutOptional: [*:0]u8, keyOutOptional_sz: c_int, valOutOptional: [*:0]u8, valOutOptional_sz: c_int) callconv(.C) bool = undefined;
	pub var EnumRegionRenderMatrix: *fn (proj: *ReaProject, regionindex: c_int, rendertrack: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var EnumTrackMIDIProgramNames: *fn (track: c_int, programNumber: c_int, programName: [*:0]u8, programName_sz: c_int) callconv(.C) bool = undefined;
	pub var EnumTrackMIDIProgramNamesEx: *fn (proj: *ReaProject, track: *MediaTrack, programNumber: c_int, programName: [*:0]u8, programName_sz: c_int) callconv(.C) bool = undefined;
	pub var Envelope_Evaluate: *fn (envelope: *TrackEnvelope, time: f64, samplerate: f64, samplesRequested: c_int, valueOutOptional: *f64, dVdSOutOptional: *f64, ddVdSOutOptional: *f64, dddVdSOutOptional: *f64) callconv(.C) c_int = undefined;
	pub var Envelope_FormatValue: *fn (env: *TrackEnvelope, value: f64, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) void  = undefined;
	pub var Envelope_GetParentTake: *fn (env: *TrackEnvelope, indexOutOptional: *c_int, index2OutOptional: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var Envelope_GetParentTrack: *fn (env: *TrackEnvelope, indexOutOptional: *c_int, index2OutOptional: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var Envelope_SortPoints: *fn (envelope: *TrackEnvelope) callconv(.C) bool = undefined;
	pub var Envelope_SortPointsEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int) callconv(.C) bool = undefined;
	pub var ExecProcess: *fn (cmdline: [*:0]const u8, timeoutmsec: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var file_exists: *fn (path: [*:0]const u8) callconv(.C) bool = undefined;
	pub var FindTempoTimeSigMarker: *fn (project: *ReaProject, time: f64) callconv(.C) c_int = undefined;
	pub var format_timestr: *fn (tpos: f64, buf: [*:0]u8, buf_sz: c_int) callconv(.C) void  = undefined;
	pub var format_timestr_len: *fn (tpos: f64, buf: [*:0]u8, buf_sz: c_int, offset: f64, modeoverride: c_int) callconv(.C) void  = undefined;
	pub var format_timestr_pos: *fn (tpos: f64, buf: [*:0]u8, buf_sz: c_int, modeoverride: c_int) callconv(.C) void  = undefined;
	pub var FreeHeapPtr: *fn (ptr: *anyopaque) callconv(.C) void  = undefined;
	pub var genGuid: *fn (g: *GUID) callconv(.C) void  = undefined;
	pub var get_config_var: *fn (name: [*:0]const u8, szOut: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var get_config_var_string: *fn (name: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) bool = undefined;
	pub var get_ini_file: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var get_midi_config_var: *fn (name: [*:0]const u8, szOut: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetActionShortcutDesc: *fn (section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int, desc: [*:0]u8, desclen: c_int) callconv(.C) bool = undefined;
	pub var GetActiveTake: *fn (item: *MediaItem) callconv(.C) ?*anyopaque = undefined;
	pub var GetAllProjectPlayStates: *fn (ignoreProject: *ReaProject) callconv(.C) c_int = undefined;
	pub var GetAppVersion: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var GetArmedCommand: *fn (secOut: [*:0]u8, secOut_sz: c_int) callconv(.C) c_int = undefined;
	pub var GetAudioAccessorEndTime: *fn (accessor: *AudioAccessor) callconv(.C) f64 = undefined;
	pub var GetAudioAccessorHash: *fn (accessor: *AudioAccessor, hashNeed128: [*:0]u8) callconv(.C) void  = undefined;
	pub var GetAudioAccessorSamples: *fn (accessor: *AudioAccessor, samplerate: c_int, numchannels: c_int, starttime_sec: f64, numsamplesperchannel: c_int, samplebuffer: *f64) callconv(.C) c_int = undefined;
	pub var GetAudioAccessorStartTime: *fn (accessor: *AudioAccessor) callconv(.C) f64 = undefined;
	pub var GetAudioDeviceInfo: *fn (attribute: [*:0]const u8, desc: [*:0]u8, desc_sz: c_int) callconv(.C) bool = undefined;
	pub var GetColorTheme: *fn (idx: c_int, defval: c_int) callconv(.C) INT_PTR  = undefined;
	pub var GetColorThemeStruct: *fn (szOut: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetConfigWantsDock: *fn (ident_str: [*:0]const u8) callconv(.C) c_int = undefined;
	pub var GetContextMenu: *fn (idx: c_int) callconv(.C) HMENU  = undefined;
	pub var GetCurrentProjectInLoadSave: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var GetCursorContext: *fn () callconv(.C) c_int = undefined;
	pub var GetCursorContext2: *fn (want_last_valid: bool) callconv(.C) c_int = undefined;
	pub var GetCursorPosition: *fn () callconv(.C) f64 = undefined;
	pub var GetCursorPositionEx: *fn (proj: *ReaProject) callconv(.C) f64 = undefined;
	pub var GetDisplayedMediaItemColor: *fn (item: *MediaItem) callconv(.C) c_int = undefined;
	pub var GetDisplayedMediaItemColor2: *fn (item: *MediaItem, take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var GetEnvelopeInfo_Value: *fn (tr: *TrackEnvelope, parmname: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var GetEnvelopeName: *fn (env: *TrackEnvelope, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) bool = undefined;
	pub var GetEnvelopePoint: *fn (envelope: *TrackEnvelope, ptidx: c_int, timeOutOptional: *f64, valueOutOptional: *f64, shapeOutOptional: *c_int, tensionOutOptional: *f64, selectedOutOptional: *bool) callconv(.C) bool = undefined;
	pub var GetEnvelopePointByTime: *fn (envelope: *TrackEnvelope, time: f64) callconv(.C) c_int = undefined;
	pub var GetEnvelopePointByTimeEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, time: f64) callconv(.C) c_int = undefined;
	pub var GetEnvelopePointEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int, timeOutOptional: *f64, valueOutOptional: *f64, shapeOutOptional: *c_int, tensionOutOptional: *f64, selectedOutOptional: *bool) callconv(.C) bool = undefined;
	pub var GetEnvelopeScalingMode: *fn (env: *TrackEnvelope) callconv(.C) c_int = undefined;
	pub var GetEnvelopeStateChunk: *fn (env: *TrackEnvelope, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var GetExePath: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var GetExtState: *fn (section: [*:0]const u8, key: [*:0]const u8) callconv(.C) [*:0]const u8 = undefined;
	pub var GetFocusedFX: *fn (tracknumberOut: *c_int, itemnumberOut: *c_int, fxnumberOut: *c_int) callconv(.C) c_int = undefined;
	pub var GetFocusedFX2: *fn (tracknumberOut: *c_int, itemnumberOut: *c_int, fxnumberOut: *c_int) callconv(.C) c_int = undefined;
	pub var GetFreeDiskSpaceForRecordPath: *fn (proj: *ReaProject, pathidx: c_int) callconv(.C) c_int = undefined;
	pub var GetFXEnvelope: *fn (track: *MediaTrack, fxindex: c_int, parameterindex: c_int, create: bool) callconv(.C) ?*anyopaque = undefined;
	pub var GetGlobalAutomationOverride: *fn () callconv(.C) c_int = undefined;
	pub var GetHZoomLevel: *fn () callconv(.C) f64 = undefined;
	pub var GetIconThemePointer: *fn (name: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var GetIconThemePointerForDPI: *fn (name: [*:0]const u8, dpisc: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetIconThemeStruct: *fn (szOut: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetInputChannelName: *fn (channelIndex: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetInputOutputLatency: *fn (inputlatencyOut: *c_int, outputLatencyOut: *c_int) callconv(.C) void  = undefined;
	pub var GetItemEditingTime2: *fn (which_itemOut: *PCM_source, flagsOut: *c_int) callconv(.C) f64 = undefined;
	pub var GetItemFromPoint: *fn (screen_x: c_int, screen_y: c_int, allow_locked: bool, takeOutOptional: *MediaItem_Take) callconv(.C) ?*anyopaque = undefined;
	pub var GetItemProjectContext: *fn (item: *MediaItem) callconv(.C) ?*anyopaque = undefined;
	pub var GetItemStateChunk: *fn (item: *MediaItem, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var GetLastColorThemeFile: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var GetLastMarkerAndCurRegion: *fn (proj: *ReaProject, time: f64, markeridxOut: *c_int, regionidxOut: *c_int) callconv(.C) void  = undefined;
	pub var GetLastTouchedFX: *fn (tracknumberOut: *c_int, fxnumberOut: *c_int, paramnumberOut: *c_int) callconv(.C) bool = undefined;
	pub var GetLastTouchedTrack: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var GetMainHwnd: *fn () callconv(.C) HWND  = undefined;
	pub var GetMasterMuteSoloFlags: *fn () callconv(.C) c_int = undefined;
	pub var GetMasterTrack: *fn (proj: *ReaProject) callconv(.C) ?*anyopaque = undefined;
	pub var GetMasterTrackVisibility: *fn () callconv(.C) c_int = undefined;
	pub var GetMaxMidiInputs: *fn () callconv(.C) c_int = undefined;
	pub var GetMaxMidiOutputs: *fn () callconv(.C) c_int = undefined;
	pub var GetMediaFileMetadata: *fn (mediaSource: *PCM_source, identifier: [*:0]const u8, bufOutNeedBig: [*:0]u8, bufOutNeedBig_sz: c_int) callconv(.C) c_int = undefined;
	pub var GetMediaItem: *fn (proj: *ReaProject, itemidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItem_Track: *fn (item: *MediaItem) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemInfo_Value: *fn (item: *MediaItem, parmname: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var GetMediaItemNumTakes: *fn (item: *MediaItem) callconv(.C) c_int = undefined;
	pub var GetMediaItemTake: *fn (item: *MediaItem, tk: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemTake_Item: *fn (take: *MediaItem_Take) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemTake_Peaks: *fn (take: *MediaItem_Take, peakrate: f64, starttime: f64, numchannels: c_int, numsamplesperchannel: c_int, want_extra_type: c_int, buf: *f64) callconv(.C) c_int = undefined;
	pub var GetMediaItemTake_Source: *fn (take: *MediaItem_Take) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemTake_Track: *fn (take: *MediaItem_Take) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemTakeByGUID: *fn (project: *ReaProject, guid: *const GUID) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaItemTakeInfo_Value: *fn (take: *MediaItem_Take, parmname: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var GetMediaItemTrack: *fn (item: *MediaItem) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaSourceFileName: *fn (source: *PCM_source, filenamebuf: [*:0]u8, filenamebuf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetMediaSourceLength: *fn (source: *PCM_source, lengthIsQNOut: *bool) callconv(.C) f64 = undefined;
	pub var GetMediaSourceNumChannels: *fn (source: *PCM_source) callconv(.C) c_int = undefined;
	pub var GetMediaSourceParent: *fn (src: *PCM_source) callconv(.C) ?*anyopaque = undefined;
	pub var GetMediaSourceSampleRate: *fn (source: *PCM_source) callconv(.C) c_int = undefined;
	pub var GetMediaSourceType: *fn (source: *PCM_source, typebuf: [*:0]u8, typebuf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetMediaTrackInfo_Value: *fn (tr: *MediaTrack, parmname: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var GetMIDIInputName: *fn (dev: c_int, nameout: [*:0]u8, nameout_sz: c_int) callconv(.C) bool = undefined;
	pub var GetMIDIOutputName: *fn (dev: c_int, nameout: [*:0]u8, nameout_sz: c_int) callconv(.C) bool = undefined;
	pub var GetMixerScroll: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var GetMouseModifier: *fn (context: [*:0]const u8, modifier_flag: c_int, action: [*:0]u8, action_sz: c_int) callconv(.C) void  = undefined;
	pub var GetMousePosition: *fn (xOut: *c_int, yOut: *c_int) callconv(.C) void  = undefined;
	pub var GetNumAudioInputs: *fn () callconv(.C) c_int = undefined;
	pub var GetNumAudioOutputs: *fn () callconv(.C) c_int = undefined;
	pub var GetNumMIDIInputs: *fn () callconv(.C) c_int = undefined;
	pub var GetNumMIDIOutputs: *fn () callconv(.C) c_int = undefined;
	pub var GetNumTakeMarkers: *fn (take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var GetNumTracks: *fn () callconv(.C) c_int = undefined;
	pub var GetOS: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var GetOutputChannelName: *fn (channelIndex: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetOutputLatency: *fn () callconv(.C) f64 = undefined;
	pub var GetParentTrack: *fn (track: *MediaTrack) callconv(.C) ?*anyopaque = undefined;
	pub var GetPeakFileName: *fn (fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetPeakFileNameEx: *fn (fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int, forWrite: bool) callconv(.C) void  = undefined;
	pub var GetPeakFileNameEx2: *fn (fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int, forWrite: bool, peaksfileextension: [*:0]const u8) callconv(.C) void  = undefined;
	pub var GetPeaksBitmap: *fn (pks: *PCM_source_peaktransfer_t, maxamp: f64, w: c_int, h: c_int, bmp: *LICE_IBitmap) callconv(.C) ?*anyopaque = undefined;
	pub var GetPlayPosition: *fn () callconv(.C) f64 = undefined;
	pub var GetPlayPosition2: *fn () callconv(.C) f64 = undefined;
	pub var GetPlayPosition2Ex: *fn (proj: *ReaProject) callconv(.C) f64 = undefined;
	pub var GetPlayPositionEx: *fn (proj: *ReaProject) callconv(.C) f64 = undefined;
	pub var GetPlayState: *fn () callconv(.C) c_int = undefined;
	pub var GetPlayStateEx: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var GetPreferredDiskReadMode: *fn (mode: *c_int, nb: *c_int, bs: *c_int) callconv(.C) void  = undefined;
	pub var GetPreferredDiskReadModePeak: *fn (mode: *c_int, nb: *c_int, bs: *c_int) callconv(.C) void  = undefined;
	pub var GetPreferredDiskWriteMode: *fn (mode: *c_int, nb: *c_int, bs: *c_int) callconv(.C) void  = undefined;
	pub var GetProjectLength: *fn (proj: *ReaProject) callconv(.C) f64 = undefined;
	pub var GetProjectName: *fn (proj: *ReaProject, buf: [*:0]u8, buf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetProjectPath: *fn (buf: [*:0]u8, buf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetProjectPathEx: *fn (proj: *ReaProject, buf: [*:0]u8, buf_sz: c_int) callconv(.C) void  = undefined;
	pub var GetProjectStateChangeCount: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var GetProjectTimeOffset: *fn (proj: *ReaProject, rndframe: bool) callconv(.C) f64 = undefined;
	pub var GetProjectTimeSignature: *fn (bpmOut: *f64, bpiOut: *f64) callconv(.C) void  = undefined;
	pub var GetProjectTimeSignature2: *fn (proj: *ReaProject, bpmOut: *f64, bpiOut: *f64) callconv(.C) void  = undefined;
	pub var GetProjExtState: *fn (proj: *ReaProject, extname: [*:0]const u8, key: [*:0]const u8, valOutNeedBig: [*:0]u8, valOutNeedBig_sz: c_int) callconv(.C) c_int = undefined;
	pub var GetResourcePath: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var GetSelectedEnvelope: *fn (proj: *ReaProject) callconv(.C) ?*anyopaque = undefined;
	pub var GetSelectedMediaItem: *fn (proj: *ReaProject, selitem: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetSelectedTrack: *fn (proj: *ReaProject, seltrackidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetSelectedTrack2: *fn (proj: *ReaProject, seltrackidx: c_int, wantmaster: bool) callconv(.C) ?*anyopaque = undefined;
	pub var GetSelectedTrackEnvelope: *fn (proj: *ReaProject) callconv(.C) ?*anyopaque = undefined;
	pub var GetSet_ArrangeView2: *fn (proj: *ReaProject, isSet: bool, screen_x_start: c_int, screen_x_end: c_int, start_timeOut: *f64, end_timeOut: *f64) callconv(.C) void  = undefined;
	pub var GetSet_LoopTimeRange: *fn (isSet: bool, isLoop: bool, startOut: *f64, endOut: *f64, allowautoseek: bool) callconv(.C) void  = undefined;
	pub var GetSet_LoopTimeRange2: *fn (proj: *ReaProject, isSet: bool, isLoop: bool, startOut: *f64, endOut: *f64, allowautoseek: bool) callconv(.C) void  = undefined;
	pub var GetSetAutomationItemInfo: *fn (env: *TrackEnvelope, autoitem_idx: c_int, desc: [*:0]const u8, value: f64, is_set: bool) callconv(.C) f64 = undefined;
	pub var GetSetAutomationItemInfo_String: *fn (env: *TrackEnvelope, autoitem_idx: c_int, desc: [*:0]const u8, valuestrNeedBig: [*:0]u8, is_set: bool) callconv(.C) bool = undefined;
	pub var GetSetEnvelopeInfo_String: *fn (env: *TrackEnvelope, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) callconv(.C) bool = undefined;
	pub var GetSetEnvelopeState: *fn (env: *TrackEnvelope, str: [*:0]u8, str_sz: c_int) callconv(.C) bool = undefined;
	pub var GetSetEnvelopeState2: *fn (env: *TrackEnvelope, str: [*:0]u8, str_sz: c_int, isundo: bool) callconv(.C) bool = undefined;
	pub var GetSetItemState: *fn (item: *MediaItem, str: [*:0]u8, str_sz: c_int) callconv(.C) bool = undefined;
	pub var GetSetItemState2: *fn (item: *MediaItem, str: [*:0]u8, str_sz: c_int, isundo: bool) callconv(.C) bool = undefined;
	pub var GetSetMediaItemInfo: *fn (item: *MediaItem, parmname: [*:0]const u8, setNewValue: *anyopaque) callconv(.C) ?*anyopaque = undefined;
	pub var GetSetMediaItemInfo_String: *fn (item: *MediaItem, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) callconv(.C) bool = undefined;
	pub var GetSetMediaItemTakeInfo: *fn (tk: *MediaItem_Take, parmname: [*:0]const u8, setNewValue: *anyopaque) callconv(.C) ?*anyopaque = undefined;
	pub var GetSetMediaItemTakeInfo_String: *fn (tk: *MediaItem_Take, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) callconv(.C) bool = undefined;
	pub var GetSetMediaTrackInfo: *fn (tr: *MediaTrack, parmname: [*:0]const u8, setNewValue: *anyopaque) callconv(.C) ?*anyopaque = undefined;
	pub var GetSetMediaTrackInfo_String: *fn (tr: *MediaTrack, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) callconv(.C) bool = undefined;
	pub var GetSetObjectState: *fn (obj: *anyopaque, str: [*:0]const u8) callconv(.C) [*:0]u8 = undefined;
	pub var GetSetObjectState2: *fn (obj: *anyopaque, str: [*:0]const u8, isundo: bool) callconv(.C) [*:0]u8 = undefined;
	pub var GetSetProjectAuthor: *fn (proj: *ReaProject, set: bool, author: [*:0]u8, author_sz: c_int) callconv(.C) void  = undefined;
	pub var GetSetProjectGrid: *fn (project: *ReaProject, set: bool, divisionInOutOptional: *f64, swingmodeInOutOptional: *c_int, swingamtInOutOptional: *f64) callconv(.C) c_int = undefined;
	pub var GetSetProjectInfo: *fn (project: *ReaProject, desc: [*:0]const u8, value: f64, is_set: bool) callconv(.C) f64 = undefined;
	pub var GetSetProjectInfo_String: *fn (project: *ReaProject, desc: [*:0]const u8, valuestrNeedBig: [*:0]u8, is_set: bool) callconv(.C) bool = undefined;
	pub var GetSetProjectNotes: *fn (proj: *ReaProject, set: bool, notesNeedBig: [*:0]u8, notesNeedBig_sz: c_int) callconv(.C) void  = undefined;
	pub var GetSetRepeat: *fn (val: c_int) callconv(.C) c_int = undefined;
	pub var GetSetRepeatEx: *fn (proj: *ReaProject, val: c_int) callconv(.C) c_int = undefined;
	pub var GetSetTrackGroupMembership: *fn (tr: *MediaTrack, groupname: [*:0]const u8, setmask: c_uint, setvalue: c_uint) callconv(.C) c_uint = undefined;
	pub var GetSetTrackGroupMembershipHigh: *fn (tr: *MediaTrack, groupname: [*:0]const u8, setmask: c_uint, setvalue: c_uint) callconv(.C) c_uint = undefined;
	pub var GetSetTrackMIDISupportFile: *fn (proj: *ReaProject, track: *MediaTrack, which: c_int, filename: [*:0]const u8) callconv(.C) [*:0]const u8 = undefined;
	pub var GetSetTrackSendInfo: *fn (tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, setNewValue: *anyopaque) callconv(.C) ?*anyopaque = undefined;
	pub var GetSetTrackSendInfo_String: *fn (tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) callconv(.C) bool = undefined;
	pub var GetSetTrackState: *fn (track: *MediaTrack, str: [*:0]u8, str_sz: c_int) callconv(.C) bool = undefined;
	pub var GetSetTrackState2: *fn (track: *MediaTrack, str: [*:0]u8, str_sz: c_int, isundo: bool) callconv(.C) bool = undefined;
	pub var GetSubProjectFromSource: *fn (src: *PCM_source) callconv(.C) ?*anyopaque = undefined;
	pub var GetTake: *fn (item: *MediaItem, takeidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTakeEnvelope: *fn (take: *MediaItem_Take, envidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTakeEnvelopeByName: *fn (take: *MediaItem_Take, envname: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var GetTakeMarker: *fn (take: *MediaItem_Take, idx: c_int, nameOut: [*:0]u8, nameOut_sz: c_int, colorOutOptional: *c_int) callconv(.C) f64 = undefined;
	pub var GetTakeName: *fn (take: *MediaItem_Take) callconv(.C) [*:0]const u8 = undefined;
	pub var GetTakeNumStretchMarkers: *fn (take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var GetTakeStretchMarker: *fn (take: *MediaItem_Take, idx: c_int, posOut: *f64, srcposOutOptional: *f64) callconv(.C) c_int = undefined;
	pub var GetTakeStretchMarkerSlope: *fn (take: *MediaItem_Take, idx: c_int) callconv(.C) f64 = undefined;
	pub var GetTCPFXParm: *fn (project: *ReaProject, track: *MediaTrack, index: c_int, fxindexOut: *c_int, parmidxOut: *c_int) callconv(.C) bool = undefined;
	pub var GetTempoMatchPlayRate: *fn (source: *PCM_source, srcscale: f64, position: f64, mult: f64, rateOut: *f64, targetlenOut: *f64) callconv(.C) bool = undefined;
	pub var GetTempoTimeSigMarker: *fn (proj: *ReaProject, ptidx: c_int, timeposOut: *f64, measureposOut: *c_int, beatposOut: *f64, bpmOut: *f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, lineartempoOut: *bool) callconv(.C) bool = undefined;
	pub var GetThemeColor: *fn (ini_key: [*:0]const u8, flagsOptional: c_int) callconv(.C) c_int = undefined;
	pub var GetToggleCommandState: *fn (command_id: c_int) callconv(.C) c_int = undefined;
	pub var GetToggleCommandState2: *fn (section: *KbdSectionInfo, command_id: c_int) callconv(.C) c_int = undefined;
	pub var GetToggleCommandStateEx: *fn (section_id: c_int, command_id: c_int) callconv(.C) c_int = undefined;
	pub var GetToggleCommandStateThroughHooks: *fn (section: *KbdSectionInfo, command_id: c_int) callconv(.C) c_int = undefined;
	pub var GetTooltipWindow: *fn () callconv(.C) HWND  = undefined;
	pub var GetTrack: *fn (proj: *ReaProject, trackidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackAutomationMode: *fn (tr: *MediaTrack) callconv(.C) c_int = undefined;
	pub var GetTrackColor: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var GetTrackDepth: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var GetTrackEnvelope: *fn (track: *MediaTrack, envidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackEnvelopeByChunkName: *fn (tr: *MediaTrack, cfgchunkname: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackEnvelopeByName: *fn (track: *MediaTrack, envname: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackFromPoint: *fn (screen_x: c_int, screen_y: c_int, infoOutOptional: *c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackGUID: *fn (tr: *MediaTrack) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackInfo: *fn (track: INT_PTR, flags: *c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetTrackMediaItem: *fn (tr: *MediaTrack, itemidx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var GetTrackMIDILyrics: *fn (track: *MediaTrack, flag: c_int, bufWantNeedBig: [*:0]u8, bufWantNeedBig_sz: *c_int) callconv(.C) bool = undefined;
	pub var GetTrackMIDINoteName: *fn (track: c_int, pitch: c_int, chan: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetTrackMIDINoteNameEx: *fn (proj: *ReaProject, track: *MediaTrack, pitch: c_int, chan: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetTrackMIDINoteRange: *fn (proj: *ReaProject, track: *MediaTrack, note_loOut: *c_int, note_hiOut: *c_int) callconv(.C) void  = undefined;
	pub var GetTrackName: *fn (track: *MediaTrack, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) bool = undefined;
	pub var GetTrackNumMediaItems: *fn (tr: *MediaTrack) callconv(.C) c_int = undefined;
	pub var GetTrackNumSends: *fn (tr: *MediaTrack, category: c_int) callconv(.C) c_int = undefined;
	pub var GetTrackReceiveName: *fn (track: *MediaTrack, recv_index: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var GetTrackReceiveUIMute: *fn (track: *MediaTrack, recv_index: c_int, muteOut: *bool) callconv(.C) bool = undefined;
	pub var GetTrackReceiveUIVolPan: *fn (track: *MediaTrack, recv_index: c_int, volumeOut: *f64, panOut: *f64) callconv(.C) bool = undefined;
	pub var GetTrackSendInfo_Value: *fn (tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var GetTrackSendName: *fn (track: *MediaTrack, send_index: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var GetTrackSendUIMute: *fn (track: *MediaTrack, send_index: c_int, muteOut: *bool) callconv(.C) bool = undefined;
	pub var GetTrackSendUIVolPan: *fn (track: *MediaTrack, send_index: c_int, volumeOut: *f64, panOut: *f64) callconv(.C) bool = undefined;
	pub var GetTrackState: *fn (track: *MediaTrack, flagsOut: *c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var GetTrackStateChunk: *fn (track: *MediaTrack, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var GetTrackUIMute: *fn (track: *MediaTrack, muteOut: *bool) callconv(.C) bool = undefined;
	pub var GetTrackUIPan: *fn (track: *MediaTrack, pan1Out: *f64, pan2Out: *f64, panmodeOut: *c_int) callconv(.C) bool = undefined;
	pub var GetTrackUIVolPan: *fn (track: *MediaTrack, volumeOut: *f64, panOut: *f64) callconv(.C) bool = undefined;
	pub var GetUnderrunTime: *fn (audio_xrunOutOptional: *c_uint, media_xrunOutOptional: *c_uint, curtimeOutOptional: *c_uint) callconv(.C) void  = undefined;
	pub var GetUserFileNameForRead: *fn (filenameNeed4096: [*:0]u8, title: [*:0]const u8, defext: [*:0]const u8) callconv(.C) bool = undefined;
	pub var GetUserInputs: *fn (title: [*:0]const u8, num_inputs: c_int, captions_csv: [*:0]const u8, retvals_csv: [*:0]u8, retvals_csv_sz: c_int) callconv(.C) bool = undefined;
	pub var GoToMarker: *fn (proj: *ReaProject, marker_index: c_int, use_timeline_order: bool) callconv(.C) void  = undefined;
	pub var GoToRegion: *fn (proj: *ReaProject, region_index: c_int, use_timeline_order: bool) callconv(.C) void  = undefined;
	pub var GR_SelectColor: *fn (hwnd: HWND, colorOut: *c_int) callconv(.C) c_int = undefined;
	pub var GSC_mainwnd: *fn (t: c_int) callconv(.C) c_int = undefined;
	pub var guidToString: *fn (g: *const GUID, destNeed64: [*:0]u8) callconv(.C) void  = undefined;
	pub var HasExtState: *fn (section: [*:0]const u8, key: [*:0]const u8) callconv(.C) bool = undefined;
	pub var HasTrackMIDIPrograms: *fn (track: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var HasTrackMIDIProgramsEx: *fn (proj: *ReaProject, track: *MediaTrack) callconv(.C) [*:0]const u8 = undefined;
	pub var Help_Set: *fn (helpstring: [*:0]const u8, is_temporary_help: bool) callconv(.C) void  = undefined;
	pub var HiresPeaksFromSource: *fn (src: *PCM_source, block: *PCM_source_peaktransfer_t) callconv(.C) void  = undefined;
	pub var image_resolve_fn: *fn (in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) callconv(.C) void  = undefined;
	pub var InsertAutomationItem: *fn (env: *TrackEnvelope, pool_id: c_int, position: f64, length: f64) callconv(.C) c_int = undefined;
	pub var InsertEnvelopePoint: *fn (envelope: *TrackEnvelope, time: f64, value: f64, shape: c_int, tension: f64, selected: bool, noSortInOptional: *bool) callconv(.C) bool = undefined;
	pub var InsertEnvelopePointEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, time: f64, value: f64, shape: c_int, tension: f64, selected: bool, noSortInOptional: *bool) callconv(.C) bool = undefined;
	pub var InsertMedia: *fn (file: [*:0]const u8, mode: c_int) callconv(.C) c_int = undefined;
	pub var InsertMediaSection: *fn (file: [*:0]const u8, mode: c_int, startpct: f64, endpct: f64, pitchshift: f64) callconv(.C) c_int = undefined;
	pub var InsertTrackAtIndex: *fn (idx: c_int, wantDefaults: bool) callconv(.C) void  = undefined;
	pub var IsInRealTimeAudio: *fn () callconv(.C) c_int = undefined;
	pub var IsItemTakeActiveForPlayback: *fn (item: *MediaItem, take: *MediaItem_Take) callconv(.C) bool = undefined;
	pub var IsMediaExtension: *fn (ext: [*:0]const u8, wantOthers: bool) callconv(.C) bool = undefined;
	pub var IsMediaItemSelected: *fn (item: *MediaItem) callconv(.C) bool = undefined;
	pub var IsProjectDirty: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var IsREAPER: *fn () callconv(.C) bool = undefined;
	pub var IsTrackSelected: *fn (track: *MediaTrack) callconv(.C) bool = undefined;
	pub var IsTrackVisible: *fn (track: *MediaTrack, mixer: bool) callconv(.C) bool = undefined;
	pub var joystick_create: *fn (guid: *const GUID) callconv(.C) ?*anyopaque = undefined;
	pub var joystick_destroy: *fn (device: *joystick_device) callconv(.C) void  = undefined;
	pub var joystick_enum: *fn (index: c_int, namestrOutOptional: [*:0]const u8) callconv(.C) [*:0]const u8 = undefined;
	pub var joystick_getaxis: *fn (dev: *joystick_device, axis: c_int) callconv(.C) f64 = undefined;
	pub var joystick_getbuttonmask: *fn (dev: *joystick_device) callconv(.C) c_uint = undefined;
	pub var joystick_getinfo: *fn (dev: *joystick_device, axesOutOptional: *c_int, povsOutOptional: *c_int) callconv(.C) c_int = undefined;
	pub var joystick_getpov: *fn (dev: *joystick_device, pov: c_int) callconv(.C) f64 = undefined;
	pub var joystick_update: *fn (dev: *joystick_device) callconv(.C) bool = undefined;
	pub var kbd_enumerateActions: *fn (section: *KbdSectionInfo, idx: c_int, nameOut: [*:0]const u8) callconv(.C) c_int = undefined;
	pub var kbd_formatKeyName: *fn (ac: *ACCEL, s: [*:0]u8) callconv(.C) void  = undefined;
	pub var kbd_getCommandName: *fn (cmd: c_int, s: [*:0]u8, section: *KbdSectionInfo) callconv(.C) void  = undefined;
	pub var kbd_getTextFromCmd: *fn (cmd: DWORD, section: *KbdSectionInfo) callconv(.C) [*:0]const u8 = undefined;
	pub var KBD_OnMainActionEx: *fn (cmd: c_int, val: c_int, valhw: c_int, relmode: c_int, hwnd: HWND, proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var kbd_OnMidiEvent: *fn (evt: *MIDI_event_t, dev_index: c_int) callconv(.C) void  = undefined;
	pub var kbd_OnMidiList: *fn (list: *MIDI_eventlist, dev_index: c_int) callconv(.C) void  = undefined;
	pub var kbd_ProcessActionsMenu: *fn (menu: HMENU, section: *KbdSectionInfo) callconv(.C) void  = undefined;
	pub var kbd_processMidiEventActionEx: *fn (evt: *MIDI_event_t, section: *KbdSectionInfo, hwndCtx: HWND) callconv(.C) bool = undefined;
	pub var kbd_reprocessMenu: *fn (menu: HMENU, section: *KbdSectionInfo) callconv(.C) void  = undefined;
	pub var kbd_RunCommandThroughHooks: *fn (section: *KbdSectionInfo, actionCommandID: *c_int, val: *c_int, valhw: *c_int, relmode: *c_int, hwnd: HWND) callconv(.C) bool = undefined;
	pub var kbd_translateAccelerator: *fn (hwnd: HWND, msg: *MSG, section: *KbdSectionInfo) callconv(.C) c_int = undefined;
	pub var kbd_translateMouse: *fn (winmsg: *anyopaque, midimsg: u8) callconv(.C) bool = undefined;
	pub var LICE__Destroy: *fn (bm: *LICE_IBitmap) callconv(.C) void  = undefined;
	pub var LICE__DestroyFont: *fn (font: *LICE_IFont) callconv(.C) void  = undefined;
	pub var LICE__DrawText: *fn (font: *LICE_IFont, bm: *LICE_IBitmap, str: [*:0]const u8, strcnt: c_int, rect: *RECT, dtFlags: UINT) callconv(.C) c_int = undefined;
	pub var LICE__GetBits: *fn (bm: *LICE_IBitmap) callconv(.C) ?*anyopaque = undefined;
	pub var LICE__GetDC: *fn (bm: *LICE_IBitmap) callconv(.C) HDC  = undefined;
	pub var LICE__GetHeight: *fn (bm: *LICE_IBitmap) callconv(.C) c_int = undefined;
	pub var LICE__GetRowSpan: *fn (bm: *LICE_IBitmap) callconv(.C) c_int = undefined;
	pub var LICE__GetWidth: *fn (bm: *LICE_IBitmap) callconv(.C) c_int = undefined;
	pub var LICE__IsFlipped: *fn (bm: *LICE_IBitmap) callconv(.C) bool = undefined;
	pub var LICE__resize: *fn (bm: *LICE_IBitmap, w: c_int, h: c_int) callconv(.C) bool = undefined;
	pub var LICE__SetBkColor: *fn (font: *LICE_IFont, color: LICE_pixel) callconv(.C) LICE_pixel  = undefined;
	pub var LICE__SetFromHFont: *fn (font: *LICE_IFont, hfont: HFONT, flags: c_int) callconv(.C) void  = undefined;
	pub var LICE__SetTextColor: *fn (font: *LICE_IFont, color: LICE_pixel) callconv(.C) LICE_pixel  = undefined;
	pub var LICE__SetTextCombineMode: *fn (ifont: *LICE_IFont, mode: c_int, alpha: f32) callconv(.C) void  = undefined;
	pub var LICE_Arc: *fn (dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, minAngle: f32, maxAngle: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_Blit: *fn (dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, srcx: c_int, srcy: c_int, srcw: c_int, srch: c_int, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_Blur: *fn (dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, srcx: c_int, srcy: c_int, srcw: c_int, srch: c_int) callconv(.C) void  = undefined;
	pub var LICE_BorderedRect: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, bgcolor: LICE_pixel, fgcolor: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_Circle: *fn (dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_Clear: *fn (dest: *LICE_IBitmap, color: LICE_pixel) callconv(.C) void  = undefined;
	pub var LICE_ClearRect: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, mask: LICE_pixel, orbits: LICE_pixel) callconv(.C) void  = undefined;
	pub var LICE_ClipLine: *fn (pX1Out: *c_int, pY1Out: *c_int, pX2Out: *c_int, pY2Out: *c_int, xLo: c_int, yLo: c_int, xHi: c_int, yHi: c_int) callconv(.C) bool = undefined;
	pub var LICE_Copy: *fn (dest: *LICE_IBitmap, src: *LICE_IBitmap) callconv(.C) void  = undefined;
	pub var LICE_CreateBitmap: *fn (mode: c_int, w: c_int, h: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var LICE_CreateFont: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var LICE_DrawCBezier: *fn (dest: *LICE_IBitmap, xstart: f64, ystart: f64, xctl1: f64, yctl1: f64, xctl2: f64, yctl2: f64, xend: f64, yend: f64, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool, tol: f64) callconv(.C) void  = undefined;
	pub var LICE_DrawChar: *fn (bm: *LICE_IBitmap, x: c_int, y: c_int, c: [*:0]u8, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_DrawGlyph: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, color: LICE_pixel, alphas: *LICE_pixel_chan, glyph_w: c_int, glyph_h: c_int, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_DrawRect: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_DrawText: *fn (bm: *LICE_IBitmap, x: c_int, y: c_int, string: [*:0]const u8, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_FillCBezier: *fn (dest: *LICE_IBitmap, xstart: f64, ystart: f64, xctl1: f64, yctl1: f64, xctl2: f64, yctl2: f64, xend: f64, yend: f64, yfill: c_int, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool, tol: f64) callconv(.C) void  = undefined;
	pub var LICE_FillCircle: *fn (dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_FillConvexPolygon: *fn (dest: *LICE_IBitmap, x: *c_int, y: *c_int, npoints: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_FillRect: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_FillTrapezoid: *fn (dest: *LICE_IBitmap, x1a: c_int, x1b: c_int, y1: c_int, x2a: c_int, x2b: c_int, y2: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_FillTriangle: *fn (dest: *LICE_IBitmap, x1: c_int, y1: c_int, x2: c_int, y2: c_int, x3: c_int, y3: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_GetPixel: *fn (bm: *LICE_IBitmap, x: c_int, y: c_int) callconv(.C) LICE_pixel  = undefined;
	pub var LICE_GradRect: *fn (dest: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, ir: f32, ig: f32, ib: f32, ia: f32, drdx: f32, dgdx: f32, dbdx: f32, dadx: f32, drdy: f32, dgdy: f32, dbdy: f32, dady: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_Line: *fn (dest: *LICE_IBitmap, x1: f32, y1: f32, x2: f32, y2: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_LineInt: *fn (dest: *LICE_IBitmap, x1: c_int, y1: c_int, x2: c_int, y2: c_int, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_LoadPNG: *fn (filename: [*:0]const u8, bmp: *LICE_IBitmap) callconv(.C) ?*anyopaque = undefined;
	pub var LICE_LoadPNGFromResource: *fn (hInst: HINSTANCE, resid: [*:0]const u8, bmp: *LICE_IBitmap) callconv(.C) ?*anyopaque = undefined;
	pub var LICE_MeasureText: *fn (string: [*:0]const u8, w: *c_int, h: *c_int) callconv(.C) void  = undefined;
	pub var LICE_MultiplyAddRect: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, rsc: f32, gsc: f32, bsc: f32, asc: f32, radd: f32, gadd: f32, badd: f32, aadd: f32) callconv(.C) void  = undefined;
	pub var LICE_PutPixel: *fn (bm: *LICE_IBitmap, x: c_int, y: c_int, color: LICE_pixel, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_RotatedBlit: *fn (dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, srcx: f32, srcy: f32, srcw: f32, srch: f32, angle: f32, cliptosourcerect: bool, alpha: f32, mode: c_int, rotxcent: f32, rotycent: f32) callconv(.C) void  = undefined;
	pub var LICE_RoundRect: *fn (drawbm: *LICE_IBitmap, xpos: f32, ypos: f32, w: f32, h: f32, cornerradius: c_int, col: LICE_pixel, alpha: f32, mode: c_int, aa: bool) callconv(.C) void  = undefined;
	pub var LICE_ScaledBlit: *fn (dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, srcx: f32, srcy: f32, srcw: f32, srch: f32, alpha: f32, mode: c_int) callconv(.C) void  = undefined;
	pub var LICE_SimpleFill: *fn (dest: *LICE_IBitmap, x: c_int, y: c_int, newcolor: LICE_pixel, comparemask: LICE_pixel, keepmask: LICE_pixel) callconv(.C) void  = undefined;
	pub var LocalizeString: *fn (src_string: [*:0]const u8, section: [*:0]const u8, flagsOptional: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var Loop_OnArrow: *fn (project: *ReaProject, direction: c_int) callconv(.C) bool = undefined;
	pub var Main_OnCommand: *fn (command: c_int, flag: c_int) callconv(.C) void  = undefined;
	pub var Main_OnCommandEx: *fn (command: c_int, flag: c_int, proj: *ReaProject) callconv(.C) void  = undefined;
	pub var Main_openProject: *fn (name: [*:0]const u8) callconv(.C) void  = undefined;
	pub var Main_SaveProject: *fn (proj: *ReaProject, forceSaveAsInOptional: bool) callconv(.C) void  = undefined;
	pub var Main_UpdateLoopInfo: *fn (ignoremask: c_int) callconv(.C) void  = undefined;
	pub var MarkProjectDirty: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var MarkTrackItemsDirty: *fn (track: *MediaTrack, item: *MediaItem) callconv(.C) void  = undefined;
	pub var Master_GetPlayRate: *fn (project: *ReaProject) callconv(.C) f64 = undefined;
	pub var Master_GetPlayRateAtTime: *fn (time_s: f64, proj: *ReaProject) callconv(.C) f64 = undefined;
	pub var Master_GetTempo: *fn () callconv(.C) f64 = undefined;
	pub var Master_NormalizePlayRate: *fn (playrate: f64, isnormalized: bool) callconv(.C) f64 = undefined;
	pub var Master_NormalizeTempo: *fn (bpm: f64, isnormalized: bool) callconv(.C) f64 = undefined;
	pub var MB: *fn (msg: [*:0]const u8, title: [*:0]const u8, typeOut: c_int) callconv(.C) c_int = undefined;
	pub var MediaItemDescendsFromTrack: *fn (item: *MediaItem, track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var MIDI_CountEvts: *fn (take: *MediaItem_Take, notecntOut: *c_int, ccevtcntOut: *c_int, textsyxevtcntOut: *c_int) callconv(.C) c_int = undefined;
	pub var MIDI_DeleteCC: *fn (take: *MediaItem_Take, ccidx: c_int) callconv(.C) bool = undefined;
	pub var MIDI_DeleteEvt: *fn (take: *MediaItem_Take, evtidx: c_int) callconv(.C) bool = undefined;
	pub var MIDI_DeleteNote: *fn (take: *MediaItem_Take, noteidx: c_int) callconv(.C) bool = undefined;
	pub var MIDI_DeleteTextSysexEvt: *fn (take: *MediaItem_Take, textsyxevtidx: c_int) callconv(.C) bool = undefined;
	pub var MIDI_DisableSort: *fn (take: *MediaItem_Take) callconv(.C) void  = undefined;
	pub var MIDI_EnumSelCC: *fn (take: *MediaItem_Take, ccidx: c_int) callconv(.C) c_int = undefined;
	pub var MIDI_EnumSelEvts: *fn (take: *MediaItem_Take, evtidx: c_int) callconv(.C) c_int = undefined;
	pub var MIDI_EnumSelNotes: *fn (take: *MediaItem_Take, noteidx: c_int) callconv(.C) c_int = undefined;
	pub var MIDI_EnumSelTextSysexEvts: *fn (take: *MediaItem_Take, textsyxidx: c_int) callconv(.C) c_int = undefined;
	pub var MIDI_eventlist_Create: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var MIDI_eventlist_Destroy: *fn (evtlist: *MIDI_eventlist) callconv(.C) void  = undefined;
	pub var MIDI_GetAllEvts: *fn (take: *MediaItem_Take, bufNeedBig: [*:0]u8, bufNeedBig_sz: *c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetCC: *fn (take: *MediaItem_Take, ccidx: c_int, selectedOut: *bool, mutedOut: *bool, ppqposOut: *f64, chanmsgOut: *c_int, chanOut: *c_int, msg2Out: *c_int, msg3Out: *c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetCCShape: *fn (take: *MediaItem_Take, ccidx: c_int, shapeOut: *c_int, beztensionOut: *f64) callconv(.C) bool = undefined;
	pub var MIDI_GetEvt: *fn (take: *MediaItem_Take, evtidx: c_int, selectedOut: *bool, mutedOut: *bool, ppqposOut: *f64, msg: [*:0]u8, msg_sz: *c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetGrid: *fn (take: *MediaItem_Take, swingOutOptional: *f64, noteLenOutOptional: *f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetHash: *fn (take: *MediaItem_Take, notesonly: bool, hash: [*:0]u8, hash_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetNote: *fn (take: *MediaItem_Take, noteidx: c_int, selectedOut: *bool, mutedOut: *bool, startppqposOut: *f64, endppqposOut: *f64, chanOut: *c_int, pitchOut: *c_int, velOut: *c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetPPQPos_EndOfMeasure: *fn (take: *MediaItem_Take, ppqpos: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetPPQPos_StartOfMeasure: *fn (take: *MediaItem_Take, ppqpos: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetPPQPosFromProjQN: *fn (take: *MediaItem_Take, projqn: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetPPQPosFromProjTime: *fn (take: *MediaItem_Take, projtime: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetProjQNFromPPQPos: *fn (take: *MediaItem_Take, ppqpos: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetProjTimeFromPPQPos: *fn (take: *MediaItem_Take, ppqpos: f64) callconv(.C) f64 = undefined;
	pub var MIDI_GetScale: *fn (take: *MediaItem_Take, rootOut: *c_int, scaleOut: *c_int, name: [*:0]u8, name_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetTextSysexEvt: *fn (take: *MediaItem_Take, textsyxevtidx: c_int, selectedOutOptional: *bool, mutedOutOptional: *bool, ppqposOutOptional: *f64, typeOutOptional: *c_int, msgOptional: [*:0]u8, msgOptional_sz: *c_int) callconv(.C) bool = undefined;
	pub var MIDI_GetTrackHash: *fn (track: *MediaTrack, notesonly: bool, hash: [*:0]u8, hash_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDI_InsertCC: *fn (take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, chanmsg: c_int, chan: c_int, msg2: c_int, msg3: c_int) callconv(.C) bool = undefined;
	pub var MIDI_InsertEvt: *fn (take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, bytestr: [*:0]const u8, bytestr_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDI_InsertNote: *fn (take: *MediaItem_Take, selected: bool, muted: bool, startppqpos: f64, endppqpos: f64, chan: c_int, pitch: c_int, vel: c_int, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_InsertTextSysexEvt: *fn (take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, typeOut: c_int, bytestr: [*:0]const u8, bytestr_sz: c_int) callconv(.C) bool = undefined;
	pub var midi_reinit: *fn () callconv(.C) void  = undefined;
	pub var MIDI_SelectAll: *fn (take: *MediaItem_Take, select: bool) callconv(.C) void  = undefined;
	pub var MIDI_SetAllEvts: *fn (take: *MediaItem_Take, buf: [*:0]const u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDI_SetCC: *fn (take: *MediaItem_Take, ccidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, chanmsgInOptional: *c_int, chanInOptional: *c_int, msg2InOptional: *c_int, msg3InOptional: *c_int, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_SetCCShape: *fn (take: *MediaItem_Take, ccidx: c_int, shape: c_int, beztension: f64, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_SetEvt: *fn (take: *MediaItem_Take, evtidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, msgOptional: [*:0]const u8, msgOptional_sz: c_int, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_SetItemExtents: *fn (item: *MediaItem, startQN: f64, endQN: f64) callconv(.C) bool = undefined;
	pub var MIDI_SetNote: *fn (take: *MediaItem_Take, noteidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, startppqposInOptional: *f64, endppqposInOptional: *f64, chanInOptional: *c_int, pitchInOptional: *c_int, velInOptional: *c_int, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_SetTextSysexEvt: *fn (take: *MediaItem_Take, textsyxevtidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, typeInOptional: *c_int, msgOptional: [*:0]const u8, msgOptional_sz: c_int, noSortInOptional: *const bool) callconv(.C) bool = undefined;
	pub var MIDI_Sort: *fn (take: *MediaItem_Take) callconv(.C) void  = undefined;
	pub var MIDIEditor_GetActive: *fn () callconv(.C) HWND  = undefined;
	pub var MIDIEditor_GetMode: *fn (midieditor: HWND) callconv(.C) c_int = undefined;
	pub var MIDIEditor_GetSetting_int: *fn (midieditor: HWND, setting_desc: [*:0]const u8) callconv(.C) c_int = undefined;
	pub var MIDIEditor_GetSetting_str: *fn (midieditor: HWND, setting_desc: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var MIDIEditor_GetTake: *fn (midieditor: HWND) callconv(.C) ?*anyopaque = undefined;
	pub var MIDIEditor_LastFocused_OnCommand: *fn (command_id: c_int, islistviewcommand: bool) callconv(.C) bool = undefined;
	pub var MIDIEditor_OnCommand: *fn (midieditor: HWND, command_id: c_int) callconv(.C) bool = undefined;
	pub var MIDIEditor_SetSetting_int: *fn (midieditor: HWND, setting_desc: [*:0]const u8, setting: c_int) callconv(.C) bool = undefined;
	pub var mkpanstr: *fn (strNeed64: [*:0]u8, pan: f64) callconv(.C) void  = undefined;
	pub var mkvolpanstr: *fn (strNeed64: [*:0]u8, vol: f64, pan: f64) callconv(.C) void  = undefined;
	pub var mkvolstr: *fn (strNeed64: [*:0]u8, vol: f64) callconv(.C) void  = undefined;
	pub var MoveEditCursor: *fn (adjamt: f64, dosel: bool) callconv(.C) void  = undefined;
	pub var MoveMediaItemToTrack: *fn (item: *MediaItem, desttr: *MediaTrack) callconv(.C) bool = undefined;
	pub var MuteAllTracks: *fn (mute: bool) callconv(.C) void  = undefined;
	pub var my_getViewport: *fn (r: *RECT, sr: *const RECT, wantWorkArea: bool) callconv(.C) void  = undefined;
	pub var NamedCommandLookup: *fn (command_name: [*:0]const u8) callconv(.C) c_int = undefined;
	pub var OnPauseButton: *fn () callconv(.C) void  = undefined;
	pub var OnPauseButtonEx: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var OnPlayButton: *fn () callconv(.C) void  = undefined;
	pub var OnPlayButtonEx: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var OnStopButton: *fn () callconv(.C) void  = undefined;
	pub var OnStopButtonEx: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var OpenColorThemeFile: *fn (fnOut: [*:0]const u8) callconv(.C) bool = undefined;
	pub var OpenMediaExplorer: *fn (mediafn: [*:0]const u8, play: bool) callconv(.C) HWND  = undefined;
	pub var OscLocalMessageToHost: *fn (message: [*:0]const u8, valueInOptional: *f64) callconv(.C) void  = undefined;
	pub var parse_timestr: *fn (buf: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var parse_timestr_len: *fn (buf: [*:0]const u8, offset: f64, modeoverride: c_int) callconv(.C) f64 = undefined;
	pub var parse_timestr_pos: *fn (buf: [*:0]const u8, modeoverride: c_int) callconv(.C) f64 = undefined;
	pub var parsepanstr: *fn (str: [*:0]const u8) callconv(.C) f64 = undefined;
	pub var PCM_Sink_Create: *fn (filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, nch: c_int, srate: c_int, buildpeaks: bool) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Sink_CreateEx: *fn (proj: *ReaProject, filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, nch: c_int, srate: c_int, buildpeaks: bool) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Sink_CreateMIDIFile: *fn (filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, bpm: f64, div: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Sink_CreateMIDIFileEx: *fn (proj: *ReaProject, filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, bpm: f64, div: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Sink_Enum: *fn (idx: c_int, descstrOut: [*:0]const u8) callconv(.C) c_uint = undefined;
	pub var PCM_Sink_GetExtension: *fn (data: [*:0]const u8, data_sz: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var PCM_Sink_ShowConfig: *fn (cfg: [*:0]const u8, cfg_sz: c_int, hwndParent: HWND) callconv(.C) HWND  = undefined;
	pub var PCM_Source_CreateFromFile: *fn (filename: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Source_CreateFromFileEx: *fn (filename: [*:0]const u8, forcenoMidiImp: bool) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Source_CreateFromSimple: *fn (dec: *ISimpleMediaDecoder, fnOut: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Source_CreateFromType: *fn (sourcetype: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var PCM_Source_Destroy: *fn (src: *PCM_source) callconv(.C) void  = undefined;
	pub var PCM_Source_GetPeaks: *fn (src: *PCM_source, peakrate: f64, starttime: f64, numchannels: c_int, numsamplesperchannel: c_int, want_extra_type: c_int, buf: *f64) callconv(.C) c_int = undefined;
	pub var PCM_Source_GetSectionInfo: *fn (src: *PCM_source, offsOut: *f64, lenOut: *f64, revOut: *bool) callconv(.C) bool = undefined;
	pub var PeakBuild_Create: *fn (src: *PCM_source, fnOut: [*:0]const u8, srate: c_int, nch: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var PeakBuild_CreateEx: *fn (src: *PCM_source, fnOut: [*:0]const u8, srate: c_int, nch: c_int, flags: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var PeakGet_Create: *fn (fnOut: [*:0]const u8, srate: c_int, nch: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var PitchShiftSubModeMenu: *fn (hwnd: HWND, x: c_int, y: c_int, mode: c_int, submode_sel: c_int) callconv(.C) c_int = undefined;
	pub var PlayPreview: *fn (preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var PlayPreviewEx: *fn (preview: *preview_register_t, bufflags: c_int, measure_align: f64) callconv(.C) c_int = undefined;
	pub var PlayTrackPreview: *fn (preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var PlayTrackPreview2: *fn (proj: *ReaProject, preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var PlayTrackPreview2Ex: *fn (proj: *ReaProject, preview: *preview_register_t, flags: c_int, measure_align: f64) callconv(.C) c_int = undefined;
	pub var plugin_getapi: *fn (name: [*:0]const u8) callconv(.C) ?*anyopaque = undefined;
	pub var plugin_getFilterList: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var plugin_getImportableProjectFilterList: *fn () callconv(.C) [*:0]const u8 = undefined;
	pub var plugin_register: *fn (name: [*:0]const u8, infostruct: *anyopaque) callconv(.C) c_int = undefined;
	pub var PluginWantsAlwaysRunFx: *fn (amt: c_int) callconv(.C) void  = undefined;
	pub var PreventUIRefresh: *fn (prevent_count: c_int) callconv(.C) void  = undefined;
	pub var projectconfig_var_addr: *fn (proj: *ReaProject, idx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var projectconfig_var_getoffs: *fn (name: [*:0]const u8, szOut: *c_int) callconv(.C) c_int = undefined;
	pub var PromptForAction: *fn (session_mode: c_int, init_id: c_int, section_id: c_int) callconv(.C) c_int = undefined;
	pub var realloc_cmd_ptr: *fn (ptr: [*:0]u8, ptr_size: *c_int, new_size: c_int) callconv(.C) bool = undefined;
	pub var ReaperGetPitchShiftAPI: *fn (version: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var ReaScriptError: *fn (errmsg: [*:0]const u8) callconv(.C) void  = undefined;
	pub var RecursiveCreateDirectory: *fn (path: [*:0]const u8, ignored: c_int) callconv(.C) c_int = undefined;
	pub var reduce_open_files: *fn (flags: c_int) callconv(.C) c_int = undefined;
	pub var RefreshToolbar: *fn (command_id: c_int) callconv(.C) void  = undefined;
	pub var RefreshToolbar2: *fn (section_id: c_int, command_id: c_int) callconv(.C) void  = undefined;
	pub var relative_fn: *fn (in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) callconv(.C) void  = undefined;
	pub var RemoveTrackSend: *fn (tr: *MediaTrack, category: c_int, sendidx: c_int) callconv(.C) bool = undefined;
	pub var RenderFileSection: *fn (source_filename: [*:0]const u8, target_filename: [*:0]const u8, start_percent: f64, end_percent: f64, playrate: f64) callconv(.C) bool = undefined;
	pub var ReorderSelectedTracks: *fn (beforeTrackIdx: c_int, makePrevFolder: c_int) callconv(.C) bool = undefined;
	pub var Resample_EnumModes: *fn (mode: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var Resampler_Create: *fn () callconv(.C) ?*anyopaque = undefined;
	pub var resolve_fn: *fn (in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) callconv(.C) void  = undefined;
	pub var resolve_fn2: *fn (in: [*:0]const u8, out: [*:0]u8, out_sz: c_int, checkSubDirOptional: [*:0]const u8) callconv(.C) void  = undefined;
	pub var ReverseNamedCommandLookup: *fn (command_id: c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var ScaleFromEnvelopeMode: *fn (scaling_mode: c_int, val: f64) callconv(.C) f64 = undefined;
	pub var ScaleToEnvelopeMode: *fn (scaling_mode: c_int, val: f64) callconv(.C) f64 = undefined;
	pub var screenset_register: *fn (id: [*:0]u8, callbackFunc: *anyopaque, param: *anyopaque) callconv(.C) void  = undefined;
	pub var screenset_registerNew: *fn (id: [*:0]u8, callbackFunc: screensetNewCallbackFunc, param: *anyopaque) callconv(.C) void  = undefined;
	pub var screenset_unregister: *fn (id: [*:0]u8) callconv(.C) void  = undefined;
	pub var screenset_unregisterByParam: *fn (param: *anyopaque) callconv(.C) void  = undefined;
	pub var screenset_updateLastFocus: *fn (prevWin: HWND) callconv(.C) void  = undefined;
	pub var SectionFromUniqueID: *fn (uniqueID: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var SelectAllMediaItems: *fn (proj: *ReaProject, selected: bool) callconv(.C) void  = undefined;
	pub var SelectProjectInstance: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var SendLocalOscMessage: *fn (local_osc_handler: *anyopaque, msg: [*:0]const u8, msglen: c_int) callconv(.C) void  = undefined;
	pub var SetActiveTake: *fn (take: *MediaItem_Take) callconv(.C) void  = undefined;
	pub var SetAutomationMode: *fn (mode: c_int, onlySel: bool) callconv(.C) void  = undefined;
	pub var SetCurrentBPM: *fn (__proj: *ReaProject, bpm: f64, wantUndo: bool) callconv(.C) void  = undefined;
	pub var SetCursorContext: *fn (mode: c_int, envInOptional: *TrackEnvelope) callconv(.C) void  = undefined;
	pub var SetEditCurPos: *fn (time: f64, moveview: bool, seekplay: bool) callconv(.C) void  = undefined;
	pub var SetEditCurPos2: *fn (proj: *ReaProject, time: f64, moveview: bool, seekplay: bool) callconv(.C) void  = undefined;
	pub var SetEnvelopePoint: *fn (envelope: *TrackEnvelope, ptidx: c_int, timeInOptional: *f64, valueInOptional: *f64, shapeInOptional: *c_int, tensionInOptional: *f64, selectedInOptional: *bool, noSortInOptional: *bool) callconv(.C) bool = undefined;
	pub var SetEnvelopePointEx: *fn (envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int, timeInOptional: *f64, valueInOptional: *f64, shapeInOptional: *c_int, tensionInOptional: *f64, selectedInOptional: *bool, noSortInOptional: *bool) callconv(.C) bool = undefined;
	pub var SetEnvelopeStateChunk: *fn (env: *TrackEnvelope, str: [*:0]const u8, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var SetExtState: *fn (section: [*:0]const u8, key: [*:0]const u8, value: [*:0]const u8, persist: bool) callconv(.C) void  = undefined;
	pub var SetGlobalAutomationOverride: *fn (mode: c_int) callconv(.C) void  = undefined;
	pub var SetItemStateChunk: *fn (item: *MediaItem, str: [*:0]const u8, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var SetMasterTrackVisibility: *fn (flag: c_int) callconv(.C) c_int = undefined;
	pub var SetMediaItemInfo_Value: *fn (item: *MediaItem, parmname: [*:0]const u8, newvalue: f64) callconv(.C) bool = undefined;
	pub var SetMediaItemLength: *fn (item: *MediaItem, length: f64, refreshUI: bool) callconv(.C) bool = undefined;
	pub var SetMediaItemPosition: *fn (item: *MediaItem, position: f64, refreshUI: bool) callconv(.C) bool = undefined;
	pub var SetMediaItemSelected: *fn (item: *MediaItem, selected: bool) callconv(.C) void  = undefined;
	pub var SetMediaItemTake_Source: *fn (take: *MediaItem_Take, source: *PCM_source) callconv(.C) bool = undefined;
	pub var SetMediaItemTakeInfo_Value: *fn (take: *MediaItem_Take, parmname: [*:0]const u8, newvalue: f64) callconv(.C) bool = undefined;
	pub var SetMediaTrackInfo_Value: *fn (tr: *MediaTrack, parmname: [*:0]const u8, newvalue: f64) callconv(.C) bool = undefined;
	pub var SetMIDIEditorGrid: *fn (project: *ReaProject, division: f64) callconv(.C) void  = undefined;
	pub var SetMixerScroll: *fn (leftmosttrack: *MediaTrack) callconv(.C) ?*anyopaque = undefined;
	pub var SetMouseModifier: *fn (context: [*:0]const u8, modifier_flag: c_int, action: [*:0]const u8) callconv(.C) void  = undefined;
	pub var SetOnlyTrackSelected: *fn (track: *MediaTrack) callconv(.C) void  = undefined;
	pub var SetProjectGrid: *fn (project: *ReaProject, division: f64) callconv(.C) void  = undefined;
	pub var SetProjectMarker: *fn (markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8) callconv(.C) bool = undefined;
	pub var SetProjectMarker2: *fn (proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8) callconv(.C) bool = undefined;
	pub var SetProjectMarker3: *fn (proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, color: c_int) callconv(.C) bool = undefined;
	pub var SetProjectMarker4: *fn (proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, color: c_int, flags: c_int) callconv(.C) bool = undefined;
	pub var SetProjectMarkerByIndex: *fn (proj: *ReaProject, markrgnidx: c_int, isrgn: bool, pos: f64, rgnend: f64, IDnumber: c_int, name: [*:0]const u8, color: c_int) callconv(.C) bool = undefined;
	pub var SetProjectMarkerByIndex2: *fn (proj: *ReaProject, markrgnidx: c_int, isrgn: bool, pos: f64, rgnend: f64, IDnumber: c_int, name: [*:0]const u8, color: c_int, flags: c_int) callconv(.C) bool = undefined;
	pub var SetProjExtState: *fn (proj: *ReaProject, extname: [*:0]const u8, key: [*:0]const u8, value: [*:0]const u8) callconv(.C) c_int = undefined;
	pub var SetRegionRenderMatrix: *fn (proj: *ReaProject, regionindex: c_int, track: *MediaTrack, addorremove: c_int) callconv(.C) void  = undefined;
	pub var SetRenderLastError: *fn (errorstr: [*:0]const u8) callconv(.C) void  = undefined;
	pub var SetTakeMarker: *fn (take: *MediaItem_Take, idx: c_int, nameIn: [*:0]const u8, srcposInOptional: *f64, colorInOptional: *c_int) callconv(.C) c_int = undefined;
	pub var SetTakeStretchMarker: *fn (take: *MediaItem_Take, idx: c_int, pos: f64, srcposInOptional: *f64) callconv(.C) c_int = undefined;
	pub var SetTakeStretchMarkerSlope: *fn (take: *MediaItem_Take, idx: c_int, slope: f64) callconv(.C) bool = undefined;
	pub var SetTempoTimeSigMarker: *fn (proj: *ReaProject, ptidx: c_int, timepos: f64, measurepos: c_int, beatpos: f64, bpm: f64, timesig_num: c_int, timesig_denom: c_int, lineartempo: bool) callconv(.C) bool = undefined;
	pub var SetThemeColor: *fn (ini_key: [*:0]const u8, color: c_int, flagsOptional: c_int) callconv(.C) c_int = undefined;
	pub var SetToggleCommandState: *fn (section_id: c_int, command_id: c_int, state: c_int) callconv(.C) bool = undefined;
	pub var SetTrackAutomationMode: *fn (tr: *MediaTrack, mode: c_int) callconv(.C) void  = undefined;
	pub var SetTrackColor: *fn (track: *MediaTrack, color: c_int) callconv(.C) void  = undefined;
	pub var SetTrackMIDILyrics: *fn (track: *MediaTrack, flag: c_int, str: [*:0]const u8) callconv(.C) bool = undefined;
	pub var SetTrackMIDINoteName: *fn (track: c_int, pitch: c_int, chan: c_int, name: [*:0]const u8) callconv(.C) bool = undefined;
	pub var SetTrackMIDINoteNameEx: *fn (proj: *ReaProject, track: *MediaTrack, pitch: c_int, chan: c_int, name: [*:0]const u8) callconv(.C) bool = undefined;
	pub var SetTrackSelected: *fn (track: *MediaTrack, selected: bool) callconv(.C) void  = undefined;
	pub var SetTrackSendInfo_Value: *fn (tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, newvalue: f64) callconv(.C) bool = undefined;
	pub var SetTrackSendUIPan: *fn (track: *MediaTrack, send_idx: c_int, pan: f64, isend: c_int) callconv(.C) bool = undefined;
	pub var SetTrackSendUIVol: *fn (track: *MediaTrack, send_idx: c_int, vol: f64, isend: c_int) callconv(.C) bool = undefined;
	pub var SetTrackStateChunk: *fn (track: *MediaTrack, str: [*:0]const u8, isundoOptional: bool) callconv(.C) bool = undefined;
	pub var ShowActionList: *fn (caller: *KbdSectionInfo, callerWnd: HWND) callconv(.C) void  = undefined;
	pub var ShowConsoleMsg: *fn (msg: [*:0]const u8) callconv(.C) void  = undefined;
	pub var ShowMessageBox: *fn (msg: [*:0]const u8, title: [*:0]const u8, typeOut: c_int) callconv(.C) c_int = undefined;
	pub var ShowPopupMenu: *fn (name: [*:0]const u8, x: c_int, y: c_int, hwndParentOptional: HWND, ctxOptional: *anyopaque, ctx2Optional: c_int, ctx3Optional: c_int) callconv(.C) void  = undefined;
	pub var SLIDER2DB: *fn (y: f64) callconv(.C) f64 = undefined;
	pub var SnapToGrid: *fn (project: *ReaProject, time_pos: f64) callconv(.C) f64 = undefined;
	pub var SoloAllTracks: *fn (solo: c_int) callconv(.C) void  = undefined;
	pub var Splash_GetWnd: *fn () callconv(.C) HWND  = undefined;
	pub var SplitMediaItem: *fn (item: *MediaItem, position: f64) callconv(.C) ?*anyopaque = undefined;
	pub var StopPreview: *fn (preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var StopTrackPreview: *fn (preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var StopTrackPreview2: *fn (proj: *anyopaque, preview: *preview_register_t) callconv(.C) c_int = undefined;
	pub var stringToGuid: *fn (str: [*:0]const u8, g: *GUID) callconv(.C) void  = undefined;
	pub var StuffMIDIMessage: *fn (mode: c_int, msg1: c_int, msg2: c_int, msg3: c_int) callconv(.C) void  = undefined;
	pub var TakeFX_AddByName: *fn (take: *MediaItem_Take, fxname: [*:0]const u8, instantiate: c_int) callconv(.C) c_int = undefined;
	pub var TakeFX_CopyToTake: *fn (src_take: *MediaItem_Take, src_fx: c_int, dest_take: *MediaItem_Take, dest_fx: c_int, is_move: bool) callconv(.C) void  = undefined;
	pub var TakeFX_CopyToTrack: *fn (src_take: *MediaItem_Take, src_fx: c_int, dest_track: *MediaTrack, dest_fx: c_int, is_move: bool) callconv(.C) void  = undefined;
	pub var TakeFX_Delete: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_EndParamEdit: *fn (take: *MediaItem_Take, fx: c_int, param: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_FormatParamValue: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, val: f64, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_FormatParamValueNormalized: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, value: f64, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetChainVisible: *fn (take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var TakeFX_GetCount: *fn (take: *MediaItem_Take) callconv(.C) c_int = undefined;
	pub var TakeFX_GetEnabled: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetEnvelope: *fn (take: *MediaItem_Take, fxindex: c_int, parameterindex: c_int, create: bool) callconv(.C) ?*anyopaque = undefined;
	pub var TakeFX_GetFloatingWindow: *fn (take: *MediaItem_Take, index: c_int) callconv(.C) HWND  = undefined;
	pub var TakeFX_GetFormattedParamValue: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetFXGUID: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var TakeFX_GetFXName: *fn (take: *MediaItem_Take, fx: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetIOSize: *fn (take: *MediaItem_Take, fx: c_int, inputPinsOutOptional: *c_int, outputPinsOutOptional: *c_int) callconv(.C) c_int = undefined;
	pub var TakeFX_GetNamedConfigParm: *fn (take: *MediaItem_Take, fx: c_int, parmname: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetNumParams: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) c_int = undefined;
	pub var TakeFX_GetOffline: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetOpen: *fn (take: *MediaItem_Take, fx: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetParam: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64) callconv(.C) f64 = undefined;
	pub var TakeFX_GetParameterStepSizes: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, stepOut: *f64, smallstepOut: *f64, largestepOut: *f64, istoggleOut: *bool) callconv(.C) bool = undefined;
	pub var TakeFX_GetParamEx: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64, midvalOut: *f64) callconv(.C) f64 = undefined;
	pub var TakeFX_GetParamName: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetParamNormalized: *fn (take: *MediaItem_Take, fx: c_int, param: c_int) callconv(.C) f64 = undefined;
	pub var TakeFX_GetPinMappings: *fn (tr: *MediaItem_Take, fx: c_int, isoutput: c_int, pin: c_int, high32OutOptional: *c_int) callconv(.C) c_int = undefined;
	pub var TakeFX_GetPreset: *fn (take: *MediaItem_Take, fx: c_int, presetname: [*:0]u8, presetname_sz: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_GetPresetIndex: *fn (take: *MediaItem_Take, fx: c_int, numberOfPresetsOut: *c_int) callconv(.C) c_int = undefined;
	pub var TakeFX_GetUserPresetFilename: *fn (take: *MediaItem_Take, fx: c_int, fnOut: [*:0]u8, fn_sz: c_int) callconv(.C) void  = undefined;
	pub var TakeFX_NavigatePresets: *fn (take: *MediaItem_Take, fx: c_int, presetmove: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_SetEnabled: *fn (take: *MediaItem_Take, fx: c_int, enabled: bool) callconv(.C) void  = undefined;
	pub var TakeFX_SetNamedConfigParm: *fn (take: *MediaItem_Take, fx: c_int, parmname: [*:0]const u8, value: [*:0]const u8) callconv(.C) bool = undefined;
	pub var TakeFX_SetOffline: *fn (take: *MediaItem_Take, fx: c_int, offline: bool) callconv(.C) void  = undefined;
	pub var TakeFX_SetOpen: *fn (take: *MediaItem_Take, fx: c_int, open: bool) callconv(.C) void  = undefined;
	pub var TakeFX_SetParam: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, val: f64) callconv(.C) bool = undefined;
	pub var TakeFX_SetParamNormalized: *fn (take: *MediaItem_Take, fx: c_int, param: c_int, value: f64) callconv(.C) bool = undefined;
	pub var TakeFX_SetPinMappings: *fn (tr: *MediaItem_Take, fx: c_int, isoutput: c_int, pin: c_int, low32bits: c_int, hi32bits: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_SetPreset: *fn (take: *MediaItem_Take, fx: c_int, presetname: [*:0]const u8) callconv(.C) bool = undefined;
	pub var TakeFX_SetPresetByIndex: *fn (take: *MediaItem_Take, fx: c_int, idx: c_int) callconv(.C) bool = undefined;
	pub var TakeFX_Show: *fn (take: *MediaItem_Take, index: c_int, showFlag: c_int) callconv(.C) void  = undefined;
	pub var TakeIsMIDI: *fn (take: *MediaItem_Take) callconv(.C) bool = undefined;
	pub var ThemeLayout_GetLayout: *fn (section: [*:0]const u8, idx: c_int, nameOut: [*:0]u8, nameOut_sz: c_int) callconv(.C) bool = undefined;
	pub var ThemeLayout_GetParameter: *fn (wp: c_int, descOutOptional: [*:0]const u8, valueOutOptional: *c_int, defValueOutOptional: *c_int, minValueOutOptional: *c_int, maxValueOutOptional: *c_int) callconv(.C) [*:0]const u8 = undefined;
	pub var ThemeLayout_RefreshAll: *fn () callconv(.C) void  = undefined;
	pub var ThemeLayout_SetLayout: *fn (section: [*:0]const u8, layout: [*:0]const u8) callconv(.C) bool = undefined;
	pub var ThemeLayout_SetParameter: *fn (wp: c_int, value: c_int, persist: bool) callconv(.C) bool = undefined;
	pub var time_precise: *fn () callconv(.C) f64 = undefined;
	pub var TimeMap2_beatsToTime: *fn (proj: *ReaProject, tpos: f64, measuresInOptional: *c_int) callconv(.C) f64 = undefined;
	pub var TimeMap2_GetDividedBpmAtTime: *fn (proj: *ReaProject, time: f64) callconv(.C) f64 = undefined;
	pub var TimeMap2_GetNextChangeTime: *fn (proj: *ReaProject, time: f64) callconv(.C) f64 = undefined;
	pub var TimeMap2_QNToTime: *fn (proj: *ReaProject, qn: f64) callconv(.C) f64 = undefined;
	pub var TimeMap2_timeToBeats: *fn (proj: *ReaProject, tpos: f64, measuresOutOptional: *c_int, cmlOutOptional: *c_int, fullbeatsOutOptional: *f64, cdenomOutOptional: *c_int) callconv(.C) f64 = undefined;
	pub var TimeMap2_timeToQN: *fn (proj: *ReaProject, tpos: f64) callconv(.C) f64 = undefined;
	pub var TimeMap_curFrameRate: *fn (proj: *ReaProject, dropFrameOutOptional: *bool) callconv(.C) f64 = undefined;
	pub var TimeMap_GetDividedBpmAtTime: *fn (time: f64) callconv(.C) f64 = undefined;
	pub var TimeMap_GetMeasureInfo: *fn (proj: *ReaProject, measure: c_int, qn_startOut: *f64, qn_endOut: *f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, tempoOut: *f64) callconv(.C) f64 = undefined;
	pub var TimeMap_GetMetronomePattern: *fn (proj: *ReaProject, time: f64, pattern: [*:0]u8, pattern_sz: c_int) callconv(.C) c_int = undefined;
	pub var TimeMap_GetTimeSigAtTime: *fn (proj: *ReaProject, time: f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, tempoOut: *f64) callconv(.C) void  = undefined;
	pub var TimeMap_QNToMeasures: *fn (proj: *ReaProject, qn: f64, qnMeasureStartOutOptional: *f64, qnMeasureEndOutOptional: *f64) callconv(.C) c_int = undefined;
	pub var TimeMap_QNToTime: *fn (qn: f64) callconv(.C) f64 = undefined;
	pub var TimeMap_QNToTime_abs: *fn (proj: *ReaProject, qn: f64) callconv(.C) f64 = undefined;
	pub var TimeMap_timeToQN: *fn (tpos: f64) callconv(.C) f64 = undefined;
	pub var TimeMap_timeToQN_abs: *fn (proj: *ReaProject, tpos: f64) callconv(.C) f64 = undefined;
	pub var ToggleTrackSendUIMute: *fn (track: *MediaTrack, send_idx: c_int) callconv(.C) bool = undefined;
	pub var Track_GetPeakHoldDB: *fn (track: *MediaTrack, channel: c_int, clear: bool) callconv(.C) f64 = undefined;
	pub var Track_GetPeakInfo: *fn (track: *MediaTrack, channel: c_int) callconv(.C) f64 = undefined;
	pub var TrackCtl_SetToolTip: *fn (fmt: [*:0]const u8, xpos: c_int, ypos: c_int, topmost: bool) callconv(.C) void  = undefined;
	pub var TrackFX_AddByName: *fn (track: *MediaTrack, fxname: [*:0]const u8, recFX: bool, instantiate: c_int) callconv(.C) c_int = undefined;
	pub var TrackFX_CopyToTake: *fn (src_track: *MediaTrack, src_fx: c_int, dest_take: *MediaItem_Take, dest_fx: c_int, is_move: bool) callconv(.C) void  = undefined;
	pub var TrackFX_CopyToTrack: *fn (src_track: *MediaTrack, src_fx: c_int, dest_track: *MediaTrack, dest_fx: c_int, is_move: bool) callconv(.C) void  = undefined;
	pub var TrackFX_Delete: *fn (track: *MediaTrack, fx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_EndParamEdit: *fn (track: *MediaTrack, fx: c_int, param: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_FormatParamValue: *fn (track: *MediaTrack, fx: c_int, param: c_int, val: f64, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_FormatParamValueNormalized: *fn (track: *MediaTrack, fx: c_int, param: c_int, value: f64, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetByName: *fn (track: *MediaTrack, fxname: [*:0]const u8, instantiate: bool) callconv(.C) c_int = undefined;
	pub var TrackFX_GetChainVisible: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var TrackFX_GetCount: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var TrackFX_GetEnabled: *fn (track: *MediaTrack, fx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetEQ: *fn (track: *MediaTrack, instantiate: bool) callconv(.C) c_int = undefined;
	pub var TrackFX_GetEQBandEnabled: *fn (track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetEQParam: *fn (track: *MediaTrack, fxidx: c_int, paramidx: c_int, bandtypeOut: *c_int, bandidxOut: *c_int, paramtypeOut: *c_int, normvalOut: *f64) callconv(.C) bool = undefined;
	pub var TrackFX_GetFloatingWindow: *fn (track: *MediaTrack, index: c_int) callconv(.C) HWND  = undefined;
	pub var TrackFX_GetFormattedParamValue: *fn (track: *MediaTrack, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetFXGUID: *fn (track: *MediaTrack, fx: c_int) callconv(.C) ?*anyopaque = undefined;
	pub var TrackFX_GetFXName: *fn (track: *MediaTrack, fx: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetInstrument: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var TrackFX_GetIOSize: *fn (track: *MediaTrack, fx: c_int, inputPinsOutOptional: *c_int, outputPinsOutOptional: *c_int) callconv(.C) c_int = undefined;
	pub var TrackFX_GetNamedConfigParm: *fn (track: *MediaTrack, fx: c_int, parmname: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetNumParams: *fn (track: *MediaTrack, fx: c_int) callconv(.C) c_int = undefined;
	pub var TrackFX_GetOffline: *fn (track: *MediaTrack, fx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetOpen: *fn (track: *MediaTrack, fx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetParam: *fn (track: *MediaTrack, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64) callconv(.C) f64 = undefined;
	pub var TrackFX_GetParameterStepSizes: *fn (track: *MediaTrack, fx: c_int, param: c_int, stepOut: *f64, smallstepOut: *f64, largestepOut: *f64, istoggleOut: *bool) callconv(.C) bool = undefined;
	pub var TrackFX_GetParamEx: *fn (track: *MediaTrack, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64, midvalOut: *f64) callconv(.C) f64 = undefined;
	pub var TrackFX_GetParamName: *fn (track: *MediaTrack, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetParamNormalized: *fn (track: *MediaTrack, fx: c_int, param: c_int) callconv(.C) f64 = undefined;
	pub var TrackFX_GetPinMappings: *fn (tr: *MediaTrack, fx: c_int, isoutput: c_int, pin: c_int, high32OutOptional: *c_int) callconv(.C) c_int = undefined;
	pub var TrackFX_GetPreset: *fn (track: *MediaTrack, fx: c_int, presetname: [*:0]u8, presetname_sz: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_GetPresetIndex: *fn (track: *MediaTrack, fx: c_int, numberOfPresetsOut: *c_int) callconv(.C) c_int = undefined;
	pub var TrackFX_GetRecChainVisible: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var TrackFX_GetRecCount: *fn (track: *MediaTrack) callconv(.C) c_int = undefined;
	pub var TrackFX_GetUserPresetFilename: *fn (track: *MediaTrack, fx: c_int, fnOut: [*:0]u8, fn_sz: c_int) callconv(.C) void  = undefined;
	pub var TrackFX_NavigatePresets: *fn (track: *MediaTrack, fx: c_int, presetmove: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_SetEnabled: *fn (track: *MediaTrack, fx: c_int, enabled: bool) callconv(.C) void  = undefined;
	pub var TrackFX_SetEQBandEnabled: *fn (track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int, enable: bool) callconv(.C) bool = undefined;
	pub var TrackFX_SetEQParam: *fn (track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int, paramtype: c_int, val: f64, isnorm: bool) callconv(.C) bool = undefined;
	pub var TrackFX_SetNamedConfigParm: *fn (track: *MediaTrack, fx: c_int, parmname: [*:0]const u8, value: [*:0]const u8) callconv(.C) bool = undefined;
	pub var TrackFX_SetOffline: *fn (track: *MediaTrack, fx: c_int, offline: bool) callconv(.C) void  = undefined;
	pub var TrackFX_SetOpen: *fn (track: *MediaTrack, fx: c_int, open: bool) callconv(.C) void  = undefined;
	pub var TrackFX_SetParam: *fn (track: *MediaTrack, fx: c_int, param: c_int, val: f64) callconv(.C) bool = undefined;
	pub var TrackFX_SetParamNormalized: *fn (track: *MediaTrack, fx: c_int, param: c_int, value: f64) callconv(.C) bool = undefined;
	pub var TrackFX_SetPinMappings: *fn (tr: *MediaTrack, fx: c_int, isoutput: c_int, pin: c_int, low32bits: c_int, hi32bits: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_SetPreset: *fn (track: *MediaTrack, fx: c_int, presetname: [*:0]const u8) callconv(.C) bool = undefined;
	pub var TrackFX_SetPresetByIndex: *fn (track: *MediaTrack, fx: c_int, idx: c_int) callconv(.C) bool = undefined;
	pub var TrackFX_Show: *fn (track: *MediaTrack, index: c_int, showFlag: c_int) callconv(.C) void  = undefined;
	pub var TrackList_AdjustWindows: *fn (isMinor: bool) callconv(.C) void  = undefined;
	pub var TrackList_UpdateAllExternalSurfaces: *fn () callconv(.C) void  = undefined;
	pub var Undo_BeginBlock: *fn () callconv(.C) void  = undefined;
	pub var Undo_BeginBlock2: *fn (proj: *ReaProject) callconv(.C) void  = undefined;
	pub var Undo_CanRedo2: *fn (proj: *ReaProject) callconv(.C) [*:0]const u8 = undefined;
	pub var Undo_CanUndo2: *fn (proj: *ReaProject) callconv(.C) [*:0]const u8 = undefined;
	pub var Undo_DoRedo2: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var Undo_DoUndo2: *fn (proj: *ReaProject) callconv(.C) c_int = undefined;
	pub var Undo_EndBlock: *fn (descchange: [*:0]const u8, extraflags: c_int) callconv(.C) void  = undefined;
	pub var Undo_EndBlock2: *fn (proj: *ReaProject, descchange: [*:0]const u8, extraflags: c_int) callconv(.C) void  = undefined;
	pub var Undo_OnStateChange: *fn (descchange: [*:0]const u8) callconv(.C) void  = undefined;
	pub var Undo_OnStateChange2: *fn (proj: *ReaProject, descchange: [*:0]const u8) callconv(.C) void  = undefined;
	pub var Undo_OnStateChange_Item: *fn (proj: *ReaProject, name: [*:0]const u8, item: *MediaItem) callconv(.C) void  = undefined;
	pub var Undo_OnStateChangeEx: *fn (descchange: [*:0]const u8, whichStates: c_int, trackparm: c_int) callconv(.C) void  = undefined;
	pub var Undo_OnStateChangeEx2: *fn (proj: *ReaProject, descchange: [*:0]const u8, whichStates: c_int, trackparm: c_int) callconv(.C) void  = undefined;
	pub var update_disk_counters: *fn (readamt: c_int, writeamt: c_int) callconv(.C) void  = undefined;
	pub var UpdateArrange: *fn () callconv(.C) void  = undefined;
	pub var UpdateItemInProject: *fn (item: *MediaItem) callconv(.C) void  = undefined;
	pub var UpdateTimeline: *fn () callconv(.C) void  = undefined;
	pub var ValidatePtr: *fn (pointer: *anyopaque, ctypename: [*:0]const u8) callconv(.C) bool = undefined;
	pub var ValidatePtr2: *fn (proj: *ReaProject, pointer: *anyopaque, ctypename: [*:0]const u8) callconv(.C) bool = undefined;
	pub var ViewPrefs: *fn (page: c_int, pageByName: [*:0]const u8) callconv(.C) void  = undefined;
	pub var WDL_VirtualWnd_ScaledBlitBG: *fn (dest: *LICE_IBitmap, src: *WDL_VirtualWnd_BGCfg, destx: c_int, desty: c_int, destw: c_int, desth: c_int, clipx: c_int, clipy: c_int, clipw: c_int, cliph: c_int, alpha: f32, mode: c_int) callconv(.C) bool = undefined;
};

// __mergesort
// __mergesort is a stable sorting function with an API similar to qsort().
// HOWEVER, it requires some temporary space, equal to the size of the data being sorted, so you can pass it as the last parameter,
// or NULL and it will allocate and free space internally.
pub fn __mergesort(base: ?*anyopaque,  nmemb: usize, size: usize, cmpfunc: ?*fn(*const anyopaque, *const anyopaque) c_int, tmpspace: ?*anyopaque) void {
	return fnPtrs.__mergesort(base,  nmemb, size, cmpfunc, tmpspace);
}

/// AddCustomizableMenu
/// menuidstr is some unique identifying string
/// menuname is for main menus only (displayed in a menu bar somewhere), NULL otherwise
/// kbdsecname is the name of the KbdSectionInfo registered by this plugin, or NULL for the main actions section
pub fn AddCustomizableMenu(menuidstr: [*:0]const u8, menuname: [*:0]const u8, kbdsecname: [*:0]const u8, addtomainmenu: bool) bool {
	return fnPtrs.AddCustomizableMenu(menuidstr, menuname, kbdsecname, addtomainmenu);
}

/// AddExtensionsMainMenu
/// Add an Extensions main menu, which the extension can populate/modify with plugin_register("hookcustommenu")
pub fn AddExtensionsMainMenu() bool {
	return fnPtrs.AddExtensionsMainMenu();
}

/// AddMediaItemToTrack
/// creates a new media item.
pub fn AddMediaItemToTrack(tr: *MediaTrack) ?*anyopaque {
	return fnPtrs.AddMediaItemToTrack(tr);
}

/// AddProjectMarker
/// Returns the index of the created marker/region, or -1 on failure. Supply wantidx>=0 if you want a particular index number, but you'll get a different index number a region and wantidx is already in use.
pub fn AddProjectMarker(proj: *ReaProject, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, wantidx: c_int) c_int {
	return fnPtrs.AddProjectMarker(proj, isrgn, pos, rgnend, name, wantidx);
}

/// AddProjectMarker2
/// Returns the index of the created marker/region, or -1 on failure. Supply wantidx>=0 if you want a particular index number, but you'll get a different index number a region and wantidx is already in use. color should be 0 (default color), or ColorToNative(r,g,b)|0x1000000
pub fn AddProjectMarker2(proj: *ReaProject, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, wantidx: c_int, color: c_int) c_int {
	return fnPtrs.AddProjectMarker2(proj, isrgn, pos, rgnend, name, wantidx, color);
}

/// AddRemoveReaScript
/// Add a ReaScript (return the new command ID, or 0 if failed) or remove a ReaScript (return >0 on success). Use commit==true when adding/removing a single script. When bulk adding/removing n scripts, you can optimize the n-1 first calls with commit==false and commit==true for the last call.
pub fn AddRemoveReaScript(add: bool, sectionID: c_int, scriptfn: [*:0]const u8, commit: bool) c_int {
	return fnPtrs.AddRemoveReaScript(add, sectionID, scriptfn, commit);
}

/// AddTakeToMediaItem
/// creates a new take in an item
pub fn AddTakeToMediaItem(item: *MediaItem) ?*anyopaque {
	return fnPtrs.AddTakeToMediaItem(item);
}

/// AddTempoTimeSigMarker
/// Deprecated. Use SetTempoTimeSigMarker with ptidx=-1.
pub fn AddTempoTimeSigMarker(proj: *ReaProject, timepos: f64, bpm: f64, timesig_num: c_int, timesig_denom: c_int, lineartempochange: bool) bool {
	return fnPtrs.AddTempoTimeSigMarker(proj, timepos, bpm, timesig_num, timesig_denom, lineartempochange);
}

/// adjustZoom
/// forceset=0,doupd=true,centermode=-1 for default
pub fn adjustZoom(amt: f64, forceset: c_int, doupd: bool, centermode: c_int) void  {
	return fnPtrs.adjustZoom(amt, forceset, doupd, centermode);
}

/// AnyTrackSolo
pub fn AnyTrackSolo(proj: *ReaProject) bool {
	return fnPtrs.AnyTrackSolo(proj);
}

/// APIExists
/// Returns true if function_name exists in the REAPER API
pub fn APIExists(function_name: [*:0]const u8) bool {
	return fnPtrs.APIExists(function_name);
}

/// APITest
/// Displays a message window if the API was successfully called.
pub fn APITest() void  {
	return fnPtrs.APITest();
}

/// ApplyNudge
/// nudgeflag: &1=set to value (otherwise nudge by value), &2=snap
/// nudgewhat: 0=position, 1=left trim, 2=left edge, 3=right edge, 4=contents, 5=duplicate, 6=edit cursor
/// nudgeunit: 0=ms, 1=seconds, 2=grid, 3=256th notes, ..., 15=whole notes, 16=measures.beats (1.15 = 1 measure + 1.5 beats), 17=samples, 18=frames, 19=pixels, 20=item lengths, 21=item selections
/// value: amount to nudge by, or value to set to
/// reverse: in nudge mode, nudges left (otherwise ignored)
/// copies: in nudge duplicate mode, number of copies (otherwise ignored)
pub fn ApplyNudge(project: *ReaProject, nudgeflag: c_int, nudgewhat: c_int, nudgeunits: c_int, value: f64, reverse: bool, copies: c_int) bool {
	return fnPtrs.ApplyNudge(project, nudgeflag, nudgewhat, nudgeunits, value, reverse, copies);
}

/// ArmCommand
/// arms a command (or disarms if 0 passed) in section sectionname (empty string for main)
pub fn ArmCommand(cmd: c_int, sectionname: [*:0]const u8) void  {
	return fnPtrs.ArmCommand(cmd, sectionname);
}

/// Audio_Init
/// open all audio and MIDI devices, if not open
pub fn Audio_Init() void  {
	return fnPtrs.Audio_Init();
}

/// Audio_IsPreBuffer
/// is in pre-buffer? threadsafe
pub fn Audio_IsPreBuffer() c_int {
	return fnPtrs.Audio_IsPreBuffer();
}

/// Audio_IsRunning
/// is audio running at all? threadsafe
pub fn Audio_IsRunning() c_int {
	return fnPtrs.Audio_IsRunning();
}

/// Audio_Quit
/// close all audio and MIDI devices, if open
pub fn Audio_Quit() void  {
	return fnPtrs.Audio_Quit();
}

/// Audio_RegHardwareHook
/// return >0 on success
pub fn Audio_RegHardwareHook(isAdd: bool, reg: *audio_hook_register_t) c_int {
	return fnPtrs.Audio_RegHardwareHook(isAdd, reg);
}

/// AudioAccessorStateChanged
/// Returns true if the underlying samples (track or media item take) have changed, but does not update the audio accessor, so the user can selectively call AudioAccessorValidateState only when needed. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, DestroyAudioAccessor, GetAudioAccessorEndTime, GetAudioAccessorSamples.
pub fn AudioAccessorStateChanged(accessor: *AudioAccessor) bool {
	return fnPtrs.AudioAccessorStateChanged(accessor);
}

/// AudioAccessorUpdate
/// Force the accessor to reload its state from the underlying track or media item take. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorEndTime, GetAudioAccessorSamples.
pub fn AudioAccessorUpdate(accessor: *AudioAccessor) void  {
	return fnPtrs.AudioAccessorUpdate(accessor);
}

/// AudioAccessorValidateState
/// Validates the current state of the audio accessor -- must ONLY call this from the main thread. Returns true if the state changed.
pub fn AudioAccessorValidateState(accessor: *AudioAccessor) bool {
	return fnPtrs.AudioAccessorValidateState(accessor);
}

/// BypassFxAllTracks
/// -1 = bypass all if not all bypassed,otherwise unbypass all
pub fn BypassFxAllTracks(bypass: c_int) void  {
	return fnPtrs.BypassFxAllTracks(bypass);
}

/// CalculatePeaks
pub fn CalculatePeaks(srcBlock: *PCM_source_transfer_t, pksBlock: *PCM_source_peaktransfer_t) c_int {
	return fnPtrs.CalculatePeaks(srcBlock, pksBlock);
}

/// CalculatePeaksFloatSrcPtr
/// NOTE: source samples field is a pointer to floats instead
pub fn CalculatePeaksFloatSrcPtr(srcBlock: *PCM_source_transfer_t, pksBlock: *PCM_source_peaktransfer_t) c_int {
	return fnPtrs.CalculatePeaksFloatSrcPtr(srcBlock, pksBlock);
}

/// ClearAllRecArmed
pub fn ClearAllRecArmed() void  {
	return fnPtrs.ClearAllRecArmed();
}

/// ClearConsole
/// Clear the ReaScript console. See ShowConsoleMsg
pub fn ClearConsole() void  {
	return fnPtrs.ClearConsole();
}

/// ClearPeakCache
/// resets the global peak caches
pub fn ClearPeakCache() void  {
	return fnPtrs.ClearPeakCache();
}

/// ColorFromNative
/// Extract RGB values from an OS dependent color. See ColorToNative.
pub fn ColorFromNative(col: c_int, rOut: *c_int, gOut: *c_int, bOut: *c_int) void  {
	return fnPtrs.ColorFromNative(col, rOut, gOut, bOut);
}

/// ColorToNative
/// Make an OS dependent color from RGB values (e.g. RGB() macro on Windows). r,g and b are in [0..255]. See ColorFromNative.
pub fn ColorToNative(r: c_int, g: c_int, b: c_int) c_int {
	return fnPtrs.ColorToNative(r, g, b);
}

/// CountActionShortcuts
/// Returns the number of shortcuts that exist for the given command ID.
/// see GetActionShortcutDesc, DeleteActionShortcut, DoActionShortcutDialog.
pub fn CountActionShortcuts(section: *KbdSectionInfo, cmdID: c_int) c_int {
	return fnPtrs.CountActionShortcuts(section, cmdID);
}

/// CountAutomationItems
/// Returns the number of automation items on this envelope. See GetSetAutomationItemInfo
pub fn CountAutomationItems(env: *TrackEnvelope) c_int {
	return fnPtrs.CountAutomationItems(env);
}

/// CountEnvelopePoints
/// Returns the number of points in the envelope. See CountEnvelopePointsEx.
pub fn CountEnvelopePoints(envelope: *TrackEnvelope) c_int {
	return fnPtrs.CountEnvelopePoints(envelope);
}

/// CountEnvelopePointsEx
/// Returns the number of points in the envelope.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See GetEnvelopePointEx, SetEnvelopePointEx, InsertEnvelopePointEx, DeleteEnvelopePointEx.
pub fn CountEnvelopePointsEx(envelope: *TrackEnvelope, autoitem_idx: c_int) c_int {
	return fnPtrs.CountEnvelopePointsEx(envelope, autoitem_idx);
}

/// CountMediaItems
/// count the number of items in the project (proj=0 for active project)
pub fn CountMediaItems(proj: *ReaProject) c_int {
	return fnPtrs.CountMediaItems(proj);
}

/// CountProjectMarkers
/// num_markersOut and num_regionsOut may be NULL.
pub fn CountProjectMarkers(proj: *ReaProject, num_markersOut: *c_int, num_regionsOut: *c_int) c_int {
	return fnPtrs.CountProjectMarkers(proj, num_markersOut, num_regionsOut);
}

/// CountSelectedMediaItems
/// count the number of selected items in the project (proj=0 for active project)
pub fn CountSelectedMediaItems(proj: *ReaProject) c_int {
	return fnPtrs.CountSelectedMediaItems(proj);
}

/// CountSelectedTracks
/// Count the number of selected tracks in the project (proj=0 for active project). This function ignores the master track, see CountSelectedTracks2.
pub fn CountSelectedTracks(proj: *ReaProject) c_int {
	return fnPtrs.CountSelectedTracks(proj);
}

/// CountSelectedTracks2
/// Count the number of selected tracks in the project (proj=0 for active project).
pub fn CountSelectedTracks2(proj: *ReaProject, wantmaster: bool) c_int {
	return fnPtrs.CountSelectedTracks2(proj, wantmaster);
}

/// CountTakeEnvelopes
/// See GetTakeEnvelope
pub fn CountTakeEnvelopes(take: *MediaItem_Take) c_int {
	return fnPtrs.CountTakeEnvelopes(take);
}

/// CountTakes
/// count the number of takes in the item
pub fn CountTakes(item: *MediaItem) c_int {
	return fnPtrs.CountTakes(item);
}

/// CountTCPFXParms
/// Count the number of FX parameter knobs displayed on the track control panel.
pub fn CountTCPFXParms(project: *ReaProject, track: *MediaTrack) c_int {
	return fnPtrs.CountTCPFXParms(project, track);
}

/// CountTempoTimeSigMarkers
/// Count the number of tempo/time signature markers in the project. See GetTempoTimeSigMarker, SetTempoTimeSigMarker, AddTempoTimeSigMarker.
pub fn CountTempoTimeSigMarkers(proj: *ReaProject) c_int {
	return fnPtrs.CountTempoTimeSigMarkers(proj);
}

/// CountTrackEnvelopes
/// see GetTrackEnvelope
pub fn CountTrackEnvelopes(track: *MediaTrack) c_int {
	return fnPtrs.CountTrackEnvelopes(track);
}

/// CountTrackMediaItems
/// count the number of items in the track
pub fn CountTrackMediaItems(track: *MediaTrack) c_int {
	return fnPtrs.CountTrackMediaItems(track);
}

/// CountTracks
/// count the number of tracks in the project (proj=0 for active project)
pub fn CountTracks(projOptional: *ReaProject) c_int {
	return fnPtrs.CountTracks(projOptional);
}

/// CreateLocalOscHandler
/// callback is a function pointer: void (*callback)(void* obj, const char* msg, int msglen), which handles OSC messages sent from REAPER. The function return is a local osc handler. See SendLocalOscMessage, DestroyOscHandler.
pub fn CreateLocalOscHandler(obj: *anyopaque, callback: *anyopaque) ?*anyopaque {
	return fnPtrs.CreateLocalOscHandler(obj, callback);
}

/// CreateMIDIInput
/// Can only reliably create midi access for devices not already opened in prefs/MIDI, suitable for control surfaces etc.
pub fn CreateMIDIInput(dev: c_int) ?*anyopaque {
	return fnPtrs.CreateMIDIInput(dev);
}

/// CreateMIDIOutput
/// Can only reliably create midi access for devices not already opened in prefs/MIDI, suitable for control surfaces etc. If streamMode is set, msoffset100 points to a persistent variable that can change and reflects added delay to output in 100ths of a millisecond.
pub fn CreateMIDIOutput(dev: c_int, streamMode: bool, msoffset100: *c_int) ?*anyopaque {
	return fnPtrs.CreateMIDIOutput(dev, streamMode, msoffset100);
}

/// CreateNewMIDIItemInProj
/// Create a new MIDI media item, containing no MIDI events. Time is in seconds unless qn is set.
pub fn CreateNewMIDIItemInProj(track: *MediaTrack, starttime: f64, endtime: f64, qnInOptional: *const bool) ?*anyopaque {
	return fnPtrs.CreateNewMIDIItemInProj(track, starttime, endtime, qnInOptional);
}

/// CreateTakeAudioAccessor
/// Create an audio accessor object for this take. Must only call from the main thread. See CreateTrackAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorEndTime, GetAudioAccessorSamples.
pub fn CreateTakeAudioAccessor(take: *MediaItem_Take) ?*anyopaque {
	return fnPtrs.CreateTakeAudioAccessor(take);
}

/// CreateTrackAudioAccessor
/// Create an audio accessor object for this track. Must only call from the main thread. See CreateTakeAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorEndTime, GetAudioAccessorSamples.
pub fn CreateTrackAudioAccessor(track: *MediaTrack) ?*anyopaque {
	return fnPtrs.CreateTrackAudioAccessor(track);
}

/// CreateTrackSend
/// Create a send/receive (desttrInOptional!=NULL), or a hardware output (desttrInOptional==NULL) with default properties, return >=0 on success (== new send/receive index). See RemoveTrackSend, GetSetTrackSendInfo, GetTrackSendInfo_Value, SetTrackSendInfo_Value.
pub fn CreateTrackSend(tr: *MediaTrack, desttrInOptional: *MediaTrack) c_int {
	return fnPtrs.CreateTrackSend(tr, desttrInOptional);
}

/// CSurf_FlushUndo
/// call this to force flushing of the undo states after using CSurf_On*Change()
pub fn CSurf_FlushUndo(force: bool) void  {
	return fnPtrs.CSurf_FlushUndo(force);
}

/// CSurf_GetTouchState
pub fn CSurf_GetTouchState(trackid: *MediaTrack, isPan: c_int) bool {
	return fnPtrs.CSurf_GetTouchState(trackid, isPan);
}

/// CSurf_GoEnd
pub fn CSurf_GoEnd() void  {
	return fnPtrs.CSurf_GoEnd();
}

/// CSurf_GoStart
pub fn CSurf_GoStart() void  {
	return fnPtrs.CSurf_GoStart();
}

/// CSurf_NumTracks
pub fn CSurf_NumTracks(mcpView: bool) c_int {
	return fnPtrs.CSurf_NumTracks(mcpView);
}

/// CSurf_OnArrow
pub fn CSurf_OnArrow(whichdir: c_int, wantzoom: bool) void  {
	return fnPtrs.CSurf_OnArrow(whichdir, wantzoom);
}

/// CSurf_OnFwd
pub fn CSurf_OnFwd(seekplay: c_int) void  {
	return fnPtrs.CSurf_OnFwd(seekplay);
}

/// CSurf_OnFXChange
pub fn CSurf_OnFXChange(trackid: *MediaTrack, en: c_int) bool {
	return fnPtrs.CSurf_OnFXChange(trackid, en);
}

/// CSurf_OnInputMonitorChange
pub fn CSurf_OnInputMonitorChange(trackid: *MediaTrack, monitor: c_int) c_int {
	return fnPtrs.CSurf_OnInputMonitorChange(trackid, monitor);
}

/// CSurf_OnInputMonitorChangeEx
pub fn CSurf_OnInputMonitorChangeEx(trackid: *MediaTrack, monitor: c_int, allowgang: bool) c_int {
	return fnPtrs.CSurf_OnInputMonitorChangeEx(trackid, monitor, allowgang);
}

/// CSurf_OnMuteChange
pub fn CSurf_OnMuteChange(trackid: *MediaTrack, mute: c_int) bool {
	return fnPtrs.CSurf_OnMuteChange(trackid, mute);
}

/// CSurf_OnMuteChangeEx
pub fn CSurf_OnMuteChangeEx(trackid: *MediaTrack, mute: c_int, allowgang: bool) bool {
	return fnPtrs.CSurf_OnMuteChangeEx(trackid, mute, allowgang);
}

/// CSurf_OnOscControlMessage
pub fn CSurf_OnOscControlMessage(msg: [*:0]const u8, arg: *f32) void  {
	return fnPtrs.CSurf_OnOscControlMessage(msg, arg);
}

/// CSurf_OnPanChange
pub fn CSurf_OnPanChange(trackid: *MediaTrack, pan: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnPanChange(trackid, pan, relative);
}

/// CSurf_OnPanChangeEx
pub fn CSurf_OnPanChangeEx(trackid: *MediaTrack, pan: f64, relative: bool, allowGang: bool) f64 {
	return fnPtrs.CSurf_OnPanChangeEx(trackid, pan, relative, allowGang);
}

/// CSurf_OnPause
pub fn CSurf_OnPause() void  {
	return fnPtrs.CSurf_OnPause();
}

/// CSurf_OnPlay
pub fn CSurf_OnPlay() void  {
	return fnPtrs.CSurf_OnPlay();
}

/// CSurf_OnPlayRateChange
pub fn CSurf_OnPlayRateChange(playrate: f64) void  {
	return fnPtrs.CSurf_OnPlayRateChange(playrate);
}

/// CSurf_OnRecArmChange
pub fn CSurf_OnRecArmChange(trackid: *MediaTrack, recarm: c_int) bool {
	return fnPtrs.CSurf_OnRecArmChange(trackid, recarm);
}

/// CSurf_OnRecArmChangeEx
pub fn CSurf_OnRecArmChangeEx(trackid: *MediaTrack, recarm: c_int, allowgang: bool) bool {
	return fnPtrs.CSurf_OnRecArmChangeEx(trackid, recarm, allowgang);
}

/// CSurf_OnRecord
pub fn CSurf_OnRecord() void  {
	return fnPtrs.CSurf_OnRecord();
}

/// CSurf_OnRecvPanChange
pub fn CSurf_OnRecvPanChange(trackid: *MediaTrack, recv_index: c_int, pan: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnRecvPanChange(trackid, recv_index, pan, relative);
}

/// CSurf_OnRecvVolumeChange
pub fn CSurf_OnRecvVolumeChange(trackid: *MediaTrack, recv_index: c_int, volume: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnRecvVolumeChange(trackid, recv_index, volume, relative);
}

/// CSurf_OnRew
pub fn CSurf_OnRew(seekplay: c_int) void  {
	return fnPtrs.CSurf_OnRew(seekplay);
}

/// CSurf_OnRewFwd
pub fn CSurf_OnRewFwd(seekplay: c_int, dir: c_int) void  {
	return fnPtrs.CSurf_OnRewFwd(seekplay, dir);
}

/// CSurf_OnScroll
pub fn CSurf_OnScroll(xdir: c_int, ydir: c_int) void  {
	return fnPtrs.CSurf_OnScroll(xdir, ydir);
}

/// CSurf_OnSelectedChange
pub fn CSurf_OnSelectedChange(trackid: *MediaTrack, selected: c_int) bool {
	return fnPtrs.CSurf_OnSelectedChange(trackid, selected);
}

/// CSurf_OnSendPanChange
pub fn CSurf_OnSendPanChange(trackid: *MediaTrack, send_index: c_int, pan: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnSendPanChange(trackid, send_index, pan, relative);
}

/// CSurf_OnSendVolumeChange
pub fn CSurf_OnSendVolumeChange(trackid: *MediaTrack, send_index: c_int, volume: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnSendVolumeChange(trackid, send_index, volume, relative);
}

/// CSurf_OnSoloChange
pub fn CSurf_OnSoloChange(trackid: *MediaTrack, solo: c_int) bool {
	return fnPtrs.CSurf_OnSoloChange(trackid, solo);
}

/// CSurf_OnSoloChangeEx
pub fn CSurf_OnSoloChangeEx(trackid: *MediaTrack, solo: c_int, allowgang: bool) bool {
	return fnPtrs.CSurf_OnSoloChangeEx(trackid, solo, allowgang);
}

/// CSurf_OnStop
pub fn CSurf_OnStop() void  {
	return fnPtrs.CSurf_OnStop();
}

/// CSurf_OnTempoChange
pub fn CSurf_OnTempoChange(bpm: f64) void  {
	return fnPtrs.CSurf_OnTempoChange(bpm);
}

/// CSurf_OnTrackSelection
pub fn CSurf_OnTrackSelection(trackid: *MediaTrack) void  {
	return fnPtrs.CSurf_OnTrackSelection(trackid);
}

/// CSurf_OnVolumeChange
pub fn CSurf_OnVolumeChange(trackid: *MediaTrack, volume: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnVolumeChange(trackid, volume, relative);
}

/// CSurf_OnVolumeChangeEx
pub fn CSurf_OnVolumeChangeEx(trackid: *MediaTrack, volume: f64, relative: bool, allowGang: bool) f64 {
	return fnPtrs.CSurf_OnVolumeChangeEx(trackid, volume, relative, allowGang);
}

/// CSurf_OnWidthChange
pub fn CSurf_OnWidthChange(trackid: *MediaTrack, width: f64, relative: bool) f64 {
	return fnPtrs.CSurf_OnWidthChange(trackid, width, relative);
}

/// CSurf_OnWidthChangeEx
pub fn CSurf_OnWidthChangeEx(trackid: *MediaTrack, width: f64, relative: bool, allowGang: bool) f64 {
	return fnPtrs.CSurf_OnWidthChangeEx(trackid, width, relative, allowGang);
}

/// CSurf_OnZoom
pub fn CSurf_OnZoom(xdir: c_int, ydir: c_int) void  {
	return fnPtrs.CSurf_OnZoom(xdir, ydir);
}

/// CSurf_ResetAllCachedVolPanStates
pub fn CSurf_ResetAllCachedVolPanStates() void  {
	return fnPtrs.CSurf_ResetAllCachedVolPanStates();
}

/// CSurf_ScrubAmt
pub fn CSurf_ScrubAmt(amt: f64) void  {
	return fnPtrs.CSurf_ScrubAmt(amt);
}

/// CSurf_SetAutoMode
pub fn CSurf_SetAutoMode(mode: c_int, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetAutoMode(mode, ignoresurf);
}

/// CSurf_SetPlayState
pub fn CSurf_SetPlayState(play: bool, pause: bool, rec: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetPlayState(play, pause, rec, ignoresurf);
}

/// CSurf_SetRepeatState
pub fn CSurf_SetRepeatState(rep: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetRepeatState(rep, ignoresurf);
}

/// CSurf_SetSurfaceMute
pub fn CSurf_SetSurfaceMute(trackid: *MediaTrack, mute: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfaceMute(trackid, mute, ignoresurf);
}

/// CSurf_SetSurfacePan
pub fn CSurf_SetSurfacePan(trackid: *MediaTrack, pan: f64, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfacePan(trackid, pan, ignoresurf);
}

/// CSurf_SetSurfaceRecArm
pub fn CSurf_SetSurfaceRecArm(trackid: *MediaTrack, recarm: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfaceRecArm(trackid, recarm, ignoresurf);
}

/// CSurf_SetSurfaceSelected
pub fn CSurf_SetSurfaceSelected(trackid: *MediaTrack, selected: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfaceSelected(trackid, selected, ignoresurf);
}

/// CSurf_SetSurfaceSolo
pub fn CSurf_SetSurfaceSolo(trackid: *MediaTrack, solo: bool, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfaceSolo(trackid, solo, ignoresurf);
}

/// CSurf_SetSurfaceVolume
pub fn CSurf_SetSurfaceVolume(trackid: *MediaTrack, volume: f64, ignoresurf: *IReaperControlSurface) void  {
	return fnPtrs.CSurf_SetSurfaceVolume(trackid, volume, ignoresurf);
}

/// CSurf_SetTrackListChange
pub fn CSurf_SetTrackListChange() void  {
	return fnPtrs.CSurf_SetTrackListChange();
}

/// CSurf_TrackFromID
pub fn CSurf_TrackFromID(idx: c_int, mcpView: bool) ?*anyopaque {
	return fnPtrs.CSurf_TrackFromID(idx, mcpView);
}

/// CSurf_TrackToID
pub fn CSurf_TrackToID(track: *MediaTrack, mcpView: bool) c_int {
	return fnPtrs.CSurf_TrackToID(track, mcpView);
}

/// DB2SLIDER
pub fn DB2SLIDER(x: f64) f64 {
	return fnPtrs.DB2SLIDER(x);
}

/// DeleteActionShortcut
/// Delete the specific shortcut for the given command ID.
/// See CountActionShortcuts, GetActionShortcutDesc, DoActionShortcutDialog.
pub fn DeleteActionShortcut(section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int) bool {
	return fnPtrs.DeleteActionShortcut(section, cmdID, shortcutidx);
}

/// DeleteEnvelopePointEx
/// Delete an envelope point. If setting multiple points at once, set noSort=true, and call Envelope_SortPoints when done.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See CountEnvelopePointsEx, GetEnvelopePointEx, SetEnvelopePointEx, InsertEnvelopePointEx.
pub fn DeleteEnvelopePointEx(envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int) bool {
	return fnPtrs.DeleteEnvelopePointEx(envelope, autoitem_idx, ptidx);
}

/// DeleteEnvelopePointRange
/// Delete a range of envelope points. See DeleteEnvelopePointRangeEx, DeleteEnvelopePointEx.
pub fn DeleteEnvelopePointRange(envelope: *TrackEnvelope, time_start: f64, time_end: f64) bool {
	return fnPtrs.DeleteEnvelopePointRange(envelope, time_start, time_end);
}

/// DeleteEnvelopePointRangeEx
/// Delete a range of envelope points. autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
pub fn DeleteEnvelopePointRangeEx(envelope: *TrackEnvelope, autoitem_idx: c_int, time_start: f64, time_end: f64) bool {
	return fnPtrs.DeleteEnvelopePointRangeEx(envelope, autoitem_idx, time_start, time_end);
}

/// DeleteExtState
/// Delete the extended state value for a specific section and key. persist=true means the value should remain deleted the next time REAPER is opened. See SetExtState, GetExtState, HasExtState.
pub fn DeleteExtState(section: [*:0]const u8, key: [*:0]const u8, persist: bool) void  {
	return fnPtrs.DeleteExtState(section, key, persist);
}

/// DeleteProjectMarker
/// Delete a marker.  proj==NULL for the active project.
pub fn DeleteProjectMarker(proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool) bool {
	return fnPtrs.DeleteProjectMarker(proj, markrgnindexnumber, isrgn);
}

/// DeleteProjectMarkerByIndex
/// Differs from DeleteProjectMarker only in that markrgnidx is 0 for the first marker/region, 1 for the next, etc (see EnumProjectMarkers3), rather than representing the displayed marker/region ID number (see SetProjectMarker4).
pub fn DeleteProjectMarkerByIndex(proj: *ReaProject, markrgnidx: c_int) bool {
	return fnPtrs.DeleteProjectMarkerByIndex(proj, markrgnidx);
}

/// DeleteTakeMarker
/// Delete a take marker. Note that idx will change for all following take markers. See GetNumTakeMarkers, GetTakeMarker, SetTakeMarker
pub fn DeleteTakeMarker(take: *MediaItem_Take, idx: c_int) bool {
	return fnPtrs.DeleteTakeMarker(take, idx);
}

/// DeleteTakeStretchMarkers
/// Deletes one or more stretch markers. Returns number of stretch markers deleted.
pub fn DeleteTakeStretchMarkers(take: *MediaItem_Take, idx: c_int, countInOptional: *c_int) c_int {
	return fnPtrs.DeleteTakeStretchMarkers(take, idx, countInOptional);
}

/// DeleteTempoTimeSigMarker
/// Delete a tempo/time signature marker.
pub fn DeleteTempoTimeSigMarker(project: *ReaProject, markerindex: c_int) bool {
	return fnPtrs.DeleteTempoTimeSigMarker(project, markerindex);
}

/// DeleteTrack
/// deletes a track
pub fn DeleteTrack(tr: *MediaTrack) void  {
	return fnPtrs.DeleteTrack(tr);
}

/// DeleteTrackMediaItem
pub fn DeleteTrackMediaItem(tr: *MediaTrack, it: *MediaItem) bool {
	return fnPtrs.DeleteTrackMediaItem(tr, it);
}

/// DestroyAudioAccessor
/// Destroy an audio accessor. Must only call from the main thread. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorEndTime, GetAudioAccessorSamples. 
pub fn DestroyAudioAccessor(accessor: *AudioAccessor) void  {
	return fnPtrs.DestroyAudioAccessor(accessor);
}

/// DestroyLocalOscHandler
/// See CreateLocalOscHandler, SendLocalOscMessage.
pub fn DestroyLocalOscHandler(local_osc_handler: *anyopaque) void  {
	return fnPtrs.DestroyLocalOscHandler(local_osc_handler);
}

/// DoActionShortcutDialog
/// Open the action shortcut dialog to edit or add a shortcut for the given command ID. If (shortcutidx >= 0 && shortcutidx < CountActionShortcuts()), that specific shortcut will be replaced, otherwise a new shortcut will be added.
/// See CountActionShortcuts, GetActionShortcutDesc, DeleteActionShortcut.
pub fn DoActionShortcutDialog(hwnd: HWND, section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int) bool {
	return fnPtrs.DoActionShortcutDialog(hwnd, section, cmdID, shortcutidx);
}

/// Dock_UpdateDockID
/// updates preference for docker window ident_str to be in dock whichDock on next open
pub fn Dock_UpdateDockID(ident_str: [*:0]const u8, whichDock: c_int) void  {
	return fnPtrs.Dock_UpdateDockID(ident_str, whichDock);
}

/// DockGetPosition
/// -1=not found, 0=bottom, 1=left, 2=top, 3=right, 4=floating
pub fn DockGetPosition(whichDock: c_int) c_int {
	return fnPtrs.DockGetPosition(whichDock);
}

/// DockIsChildOfDock
/// returns dock index that contains hwnd, or -1
pub fn DockIsChildOfDock(hwnd: HWND, isFloatingDockerOut: *bool) c_int {
	return fnPtrs.DockIsChildOfDock(hwnd, isFloatingDockerOut);
}

/// DockWindowActivate
pub fn DockWindowActivate(hwnd: HWND) void  {
	return fnPtrs.DockWindowActivate(hwnd);
}

/// DockWindowAdd
pub fn DockWindowAdd(hwnd: HWND, name: [*:0]const u8, pos: c_int, allowShow: bool) void  {
	return fnPtrs.DockWindowAdd(hwnd, name, pos, allowShow);
}

/// DockWindowAddEx
pub fn DockWindowAddEx(hwnd: HWND, name: [*:0]const u8, identstr: [*:0]const u8, allowShow: bool) void  {
	return fnPtrs.DockWindowAddEx(hwnd, name, identstr, allowShow);
}

/// DockWindowRefresh
pub fn DockWindowRefresh() void  {
	return fnPtrs.DockWindowRefresh();
}

/// DockWindowRefreshForHWND
pub fn DockWindowRefreshForHWND(hwnd: HWND) void  {
	return fnPtrs.DockWindowRefreshForHWND(hwnd);
}

/// DockWindowRemove
pub fn DockWindowRemove(hwnd: HWND) void  {
	return fnPtrs.DockWindowRemove(hwnd);
}

/// DuplicateCustomizableMenu
/// Populate destmenu with all the entries and submenus found in srcmenu
pub fn DuplicateCustomizableMenu(srcmenu: *anyopaque, destmenu: *anyopaque) bool {
	return fnPtrs.DuplicateCustomizableMenu(srcmenu, destmenu);
}

/// EditTempoTimeSigMarker
/// Open the tempo/time signature marker editor dialog.
pub fn EditTempoTimeSigMarker(project: *ReaProject, markerindex: c_int) bool {
	return fnPtrs.EditTempoTimeSigMarker(project, markerindex);
}

/// EnsureNotCompletelyOffscreen
/// call with a saved window rect for your window and it'll correct any positioning info.
pub fn EnsureNotCompletelyOffscreen(rInOut: *RECT) void  {
	return fnPtrs.EnsureNotCompletelyOffscreen(rInOut);
}

/// EnumerateFiles
/// List the files in the "path" directory. Returns NULL/nil when all files have been listed. Use fileindex = -1 to force re-read of directory (invalidate cache). See EnumerateSubdirectories
pub fn EnumerateFiles(path: [*:0]const u8, fileindex: c_int) [*:0]const u8 {
	return fnPtrs.EnumerateFiles(path, fileindex);
}

/// EnumerateSubdirectories
/// List the subdirectories in the "path" directory. Use subdirindex = -1 to force re-read of directory (invalidate cache). Returns NULL/nil when all subdirectories have been listed. See EnumerateFiles
pub fn EnumerateSubdirectories(path: [*:0]const u8, subdirindex: c_int) [*:0]const u8 {
	return fnPtrs.EnumerateSubdirectories(path, subdirindex);
}

/// EnumPitchShiftModes
/// Start querying modes at 0, returns FALSE when no more modes possible, sets strOut to NULL if a mode is currently unsupported
pub fn EnumPitchShiftModes(mode: c_int, strOut: [*:0]const u8) bool {
	return fnPtrs.EnumPitchShiftModes(mode, strOut);
}

/// EnumPitchShiftSubModes
/// Returns submode name, or NULL
pub fn EnumPitchShiftSubModes(mode: c_int, submode: c_int) [*:0]const u8 {
	return fnPtrs.EnumPitchShiftSubModes(mode, submode);
}

/// EnumProjectMarkers
pub fn EnumProjectMarkers(idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int) c_int {
	return fnPtrs.EnumProjectMarkers(idx, isrgnOut, posOut, rgnendOut, nameOut, markrgnindexnumberOut);
}

/// EnumProjectMarkers2
pub fn EnumProjectMarkers2(proj: *ReaProject, idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int) c_int {
	return fnPtrs.EnumProjectMarkers2(proj, idx, isrgnOut, posOut, rgnendOut, nameOut, markrgnindexnumberOut);
}

/// EnumProjectMarkers3
pub fn EnumProjectMarkers3(proj: *ReaProject, idx: c_int, isrgnOut: *bool, posOut: *f64, rgnendOut: *f64, nameOut: [*:0]const u8, markrgnindexnumberOut: *c_int, colorOut: *c_int) c_int {
	return fnPtrs.EnumProjectMarkers3(proj, idx, isrgnOut, posOut, rgnendOut, nameOut, markrgnindexnumberOut, colorOut);
}

/// EnumProjects
/// idx=-1 for current project,projfn can be NULL if not interested in filename. use idx 0x40000000 for currently rendering project, if any.
pub fn EnumProjects(idx: c_int, projfnOutOptional: [*:0]u8, projfnOutOptional_sz: c_int) ?*anyopaque {
	return fnPtrs.EnumProjects(idx, projfnOutOptional, projfnOutOptional_sz);
}

/// EnumProjExtState
/// Enumerate the data stored with the project for a specific extname. Returns false when there is no more data. See SetProjExtState, GetProjExtState.
pub fn EnumProjExtState(proj: *ReaProject, extname: [*:0]const u8, idx: c_int, keyOutOptional: [*:0]u8, keyOutOptional_sz: c_int, valOutOptional: [*:0]u8, valOutOptional_sz: c_int) bool {
	return fnPtrs.EnumProjExtState(proj, extname, idx, keyOutOptional, keyOutOptional_sz, valOutOptional, valOutOptional_sz);
}

/// EnumRegionRenderMatrix
/// Enumerate which tracks will be rendered within this region when using the region render matrix. When called with rendertrack==0, the function returns the first track that will be rendered (which may be the master track); rendertrack==1 will return the next track rendered, and so on. The function returns NULL when there are no more tracks that will be rendered within this region.
pub fn EnumRegionRenderMatrix(proj: *ReaProject, regionindex: c_int, rendertrack: c_int) ?*anyopaque {
	return fnPtrs.EnumRegionRenderMatrix(proj, regionindex, rendertrack);
}

/// EnumTrackMIDIProgramNames
/// returns false if there are no plugins on the track that support MIDI programs,or if all programs have been enumerated
pub fn EnumTrackMIDIProgramNames(track: c_int, programNumber: c_int, programName: [*:0]u8, programName_sz: c_int) bool {
	return fnPtrs.EnumTrackMIDIProgramNames(track, programNumber, programName, programName_sz);
}

/// EnumTrackMIDIProgramNamesEx
/// returns false if there are no plugins on the track that support MIDI programs,or if all programs have been enumerated
pub fn EnumTrackMIDIProgramNamesEx(proj: *ReaProject, track: *MediaTrack, programNumber: c_int, programName: [*:0]u8, programName_sz: c_int) bool {
	return fnPtrs.EnumTrackMIDIProgramNamesEx(proj, track, programNumber, programName, programName_sz);
}

/// Envelope_Evaluate
/// Get the effective envelope value at a given time position. samplesRequested is how long the caller expects until the next call to Envelope_Evaluate (often, the buffer block size). The return value is how many samples beyond that time position that the returned values are valid. dVdS is the change in value per sample (first derivative), ddVdS is the second derivative, dddVdS is the third derivative. See GetEnvelopeScalingMode.
pub fn Envelope_Evaluate(envelope: *TrackEnvelope, time: f64, samplerate: f64, samplesRequested: c_int, valueOutOptional: *f64, dVdSOutOptional: *f64, ddVdSOutOptional: *f64, dddVdSOutOptional: *f64) c_int {
	return fnPtrs.Envelope_Evaluate(envelope, time, samplerate, samplesRequested, valueOutOptional, dVdSOutOptional, ddVdSOutOptional, dddVdSOutOptional);
}

/// Envelope_FormatValue
/// Formats the value of an envelope to a user-readable form
pub fn Envelope_FormatValue(env: *TrackEnvelope, value: f64, bufOut: [*:0]u8, bufOut_sz: c_int) void  {
	return fnPtrs.Envelope_FormatValue(env, value, bufOut, bufOut_sz);
}

/// Envelope_GetParentTake
/// If take envelope, gets the take from the envelope. If FX, indexOutOptional set to FX index, index2OutOptional set to parameter index, otherwise -1.
pub fn Envelope_GetParentTake(env: *TrackEnvelope, indexOutOptional: *c_int, index2OutOptional: *c_int) ?*anyopaque {
	return fnPtrs.Envelope_GetParentTake(env, indexOutOptional, index2OutOptional);
}

/// Envelope_GetParentTrack
/// If track envelope, gets the track from the envelope. If FX, indexOutOptional set to FX index, index2OutOptional set to parameter index, otherwise -1.
pub fn Envelope_GetParentTrack(env: *TrackEnvelope, indexOutOptional: *c_int, index2OutOptional: *c_int) ?*anyopaque {
	return fnPtrs.Envelope_GetParentTrack(env, indexOutOptional, index2OutOptional);
}

/// Envelope_SortPoints
/// Sort envelope points by time. See SetEnvelopePoint, InsertEnvelopePoint.
pub fn Envelope_SortPoints(envelope: *TrackEnvelope) bool {
	return fnPtrs.Envelope_SortPoints(envelope);
}

/// Envelope_SortPointsEx
/// Sort envelope points by time. autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc. See SetEnvelopePoint, InsertEnvelopePoint.
pub fn Envelope_SortPointsEx(envelope: *TrackEnvelope, autoitem_idx: c_int) bool {
	return fnPtrs.Envelope_SortPointsEx(envelope, autoitem_idx);
}

/// ExecProcess
/// Executes command line, returns NULL on total failure, otherwise the return value, a newline, and then the output of the command. If timeoutmsec is 0, command will be allowed to run indefinitely (recommended for large amounts of returned output). timeoutmsec is -1 for no wait/terminate, -2 for no wait and minimize
pub fn ExecProcess(cmdline: [*:0]const u8, timeoutmsec: c_int) [*:0]const u8 {
	return fnPtrs.ExecProcess(cmdline, timeoutmsec);
}

/// file_exists
/// returns true if path points to a valid, readable file
pub fn file_exists(path: [*:0]const u8) bool {
	return fnPtrs.file_exists(path);
}

/// FindTempoTimeSigMarker
/// Find the tempo/time signature marker that falls at or before this time position (the marker that is in effect as of this time position).
pub fn FindTempoTimeSigMarker(project: *ReaProject, time: f64) c_int {
	return fnPtrs.FindTempoTimeSigMarker(project, time);
}

/// format_timestr
/// Format tpos (which is time in seconds) as hh:mm:ss.sss. See format_timestr_pos, format_timestr_len.
pub fn format_timestr(tpos: f64, buf: [*:0]u8, buf_sz: c_int) void  {
	return fnPtrs.format_timestr(tpos, buf, buf_sz);
}

/// format_timestr_len
/// time formatting mode overrides: -1=proj default.
/// 0=time
/// 1=measures.beats + time
/// 2=measures.beats
/// 3=seconds
/// 4=samples
/// 5=h:m:s:f
/// offset is start of where the length will be calculated from
pub fn format_timestr_len(tpos: f64, buf: [*:0]u8, buf_sz: c_int, offset: f64, modeoverride: c_int) void  {
	return fnPtrs.format_timestr_len(tpos, buf, buf_sz, offset, modeoverride);
}

/// format_timestr_pos
/// time formatting mode overrides: -1=proj default.
/// 0=time
/// 1=measures.beats + time
/// 2=measures.beats
/// 3=seconds
/// 4=samples
/// 5=h:m:s:f
/// 
pub fn format_timestr_pos(tpos: f64, buf: [*:0]u8, buf_sz: c_int, modeoverride: c_int) void  {
	return fnPtrs.format_timestr_pos(tpos, buf, buf_sz, modeoverride);
}

/// FreeHeapPtr
/// free heap memory returned from a Reaper API function
pub fn FreeHeapPtr(ptr: *anyopaque) void  {
	return fnPtrs.FreeHeapPtr(ptr);
}

/// genGuid
pub fn genGuid(g: *GUID) void  {
	return fnPtrs.genGuid(g);
}

/// get_config_var
pub fn get_config_var(name: [*:0]const u8, szOut: *c_int) ?*anyopaque {
	return fnPtrs.get_config_var(name, szOut);
}

/// get_config_var_string
/// gets ini configuration variable value as string
pub fn get_config_var_string(name: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) bool {
	return fnPtrs.get_config_var_string(name, bufOut, bufOut_sz);
}

/// get_ini_file
/// Get reaper.ini full filename.
pub fn get_ini_file() [*:0]const u8 {
	return fnPtrs.get_ini_file();
}

/// get_midi_config_var
/// Deprecated.
pub fn get_midi_config_var(name: [*:0]const u8, szOut: *c_int) ?*anyopaque {
	return fnPtrs.get_midi_config_var(name, szOut);
}

/// GetActionShortcutDesc
/// Get the text description of a specific shortcut for the given command ID.
/// See CountActionShortcuts,DeleteActionShortcut,DoActionShortcutDialog.
pub fn GetActionShortcutDesc(section: *KbdSectionInfo, cmdID: c_int, shortcutidx: c_int, desc: [*:0]u8, desclen: c_int) bool {
	return fnPtrs.GetActionShortcutDesc(section, cmdID, shortcutidx, desc, desclen);
}

/// GetActiveTake
/// get the active take in this item
pub fn GetActiveTake(item: *MediaItem) ?*anyopaque {
	return fnPtrs.GetActiveTake(item);
}

/// GetAllProjectPlayStates
/// returns the bitwise OR of all project play states (1=playing, 2=pause, 4=recording)
pub fn GetAllProjectPlayStates(ignoreProject: *ReaProject) c_int {
	return fnPtrs.GetAllProjectPlayStates(ignoreProject);
}

/// GetAppVersion
/// Returns app version which may include an OS/arch signifier, such as: "6.17" (windows 32-bit), "6.17/x64" (windows 64-bit), "6.17/OSX64" (macOS 64-bit Intel), "6.17/OSX" (macOS 32-bit), "6.17/macOS-arm64", "6.17/linux-x86_64", "6.17/linux-i686", "6.17/linux-aarch64", "6.17/linux-armv7l", etc
pub fn GetAppVersion() [*:0]const u8 {
	return fnPtrs.GetAppVersion();
}

/// GetArmedCommand
/// gets the currently armed command and section name (returns 0 if nothing armed). section name is empty-string for main section.
pub fn GetArmedCommand(secOut: [*:0]u8, secOut_sz: c_int) c_int {
	return fnPtrs.GetArmedCommand(secOut, secOut_sz);
}

/// GetAudioAccessorEndTime
/// Get the end time of the audio that can be returned from this accessor. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorSamples.
pub fn GetAudioAccessorEndTime(accessor: *AudioAccessor) f64 {
	return fnPtrs.GetAudioAccessorEndTime(accessor);
}

/// GetAudioAccessorHash
/// Deprecated. See AudioAccessorStateChanged instead.
pub fn GetAudioAccessorHash(accessor: *AudioAccessor, hashNeed128: [*:0]u8) void  {
	return fnPtrs.GetAudioAccessorHash(accessor, hashNeed128);
}

/// GetAudioAccessorSamples
/// Get a block of samples from the audio accessor. Samples are extracted immediately pre-FX, and returned interleaved (first sample of first channel, first sample of second channel...). Returns 0 if no audio, 1 if audio, -1 on error. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorStartTime, GetAudioAccessorEndTime.// 
/// 
/// This function has special handling in Python, and only returns two objects, the API function return value, and the sample buffer. Example usage:
/// 
/// <code>tr = RPR_GetTrack(0, 0)
/// aa = RPR_CreateTrackAudioAccessor(tr)
/// buf = list([0]*2*1024) # 2 channels, 1024 samples each, initialized to zero
/// pos = 0.0
/// (ret, buf) = GetAudioAccessorSamples(aa, 44100, 2, pos, 1024, buf)
/// # buf now holds the first 2*1024 audio samples from the track.
/// # typically GetAudioAccessorSamples() would be called within a loop, increasing pos each time.
/// </code>
pub fn GetAudioAccessorSamples(accessor: *AudioAccessor, samplerate: c_int, numchannels: c_int, starttime_sec: f64, numsamplesperchannel: c_int, samplebuffer: *f64) c_int {
	return fnPtrs.GetAudioAccessorSamples(accessor, samplerate, numchannels, starttime_sec, numsamplesperchannel, samplebuffer);
}

/// GetAudioAccessorStartTime
/// Get the start time of the audio that can be returned from this accessor. See CreateTakeAudioAccessor, CreateTrackAudioAccessor, DestroyAudioAccessor, AudioAccessorStateChanged, GetAudioAccessorEndTime, GetAudioAccessorSamples.
pub fn GetAudioAccessorStartTime(accessor: *AudioAccessor) f64 {
	return fnPtrs.GetAudioAccessorStartTime(accessor);
}

/// GetAudioDeviceInfo
/// get information about the currently open audio device. attribute can be MODE, IDENT_IN, IDENT_OUT, BSIZE, SRATE, BPS. returns false if unknown attribute or device not open.
pub fn GetAudioDeviceInfo(attribute: [*:0]const u8, desc: [*:0]u8, desc_sz: c_int) bool {
	return fnPtrs.GetAudioDeviceInfo(attribute, desc, desc_sz);
}

/// GetColorTheme
/// Deprecated, see GetColorThemeStruct.
pub fn GetColorTheme(idx: c_int, defval: c_int) INT_PTR  {
	return fnPtrs.GetColorTheme(idx, defval);
}

/// GetColorThemeStruct
/// returns the whole color theme (icontheme.h) and the size
pub fn GetColorThemeStruct(szOut: *c_int) ?*anyopaque {
	return fnPtrs.GetColorThemeStruct(szOut);
}

/// GetConfigWantsDock
/// gets the dock ID desired by ident_str, if any
pub fn GetConfigWantsDock(ident_str: [*:0]const u8) c_int {
	return fnPtrs.GetConfigWantsDock(ident_str);
}

/// GetContextMenu
/// gets context menus. submenu 0:trackctl, 1:mediaitems, 2:ruler, 3:empty track area
pub fn GetContextMenu(idx: c_int) HMENU  {
	return fnPtrs.GetContextMenu(idx);
}

/// GetCurrentProjectInLoadSave
/// returns current project if in load/save (usually only used from project_config_extension_t)
pub fn GetCurrentProjectInLoadSave() ?*anyopaque {
	return fnPtrs.GetCurrentProjectInLoadSave();
}

/// GetCursorContext
/// return the current cursor context: 0 if track panels, 1 if items, 2 if envelopes, otherwise unknown
pub fn GetCursorContext() c_int {
	return fnPtrs.GetCursorContext();
}

/// GetCursorContext2
/// 0 if track panels, 1 if items, 2 if envelopes, otherwise unknown (unlikely when want_last_valid is true)
pub fn GetCursorContext2(want_last_valid: bool) c_int {
	return fnPtrs.GetCursorContext2(want_last_valid);
}

/// GetCursorPosition
/// edit cursor position
pub fn GetCursorPosition() f64 {
	return fnPtrs.GetCursorPosition();
}

/// GetCursorPositionEx
/// edit cursor position
pub fn GetCursorPositionEx(proj: *ReaProject) f64 {
	return fnPtrs.GetCursorPositionEx(proj);
}

/// GetDisplayedMediaItemColor
/// see GetDisplayedMediaItemColor2.
pub fn GetDisplayedMediaItemColor(item: *MediaItem) c_int {
	return fnPtrs.GetDisplayedMediaItemColor(item);
}

/// GetDisplayedMediaItemColor2
/// Returns the custom take, item, or track color that is used (according to the user preference) to color the media item. The returned color is OS dependent|0x01000000 (i.e. ColorToNative(r,g,b)|0x01000000), so a return of zero means "no color", not black.
pub fn GetDisplayedMediaItemColor2(item: *MediaItem, take: *MediaItem_Take) c_int {
	return fnPtrs.GetDisplayedMediaItemColor2(item, take);
}

/// GetEnvelopeInfo_Value
/// Gets an envelope numerical-value attribute:
/// I_TCPY : int *, Y offset of envelope relative to parent track (may be separate lane or overlap with track contents)I_TCPH : int *, visible height of envelopeI_TCPY_USED : int *, Y offset of envelope relative to parent track, exclusive of paddingI_TCPH_USED : int *, visible height of envelope, exclusive of paddingP_TRACK : MediaTrack *, parent track pointer (if any)P_ITEM : MediaItem *, parent item pointer (if any)P_TAKE : MediaItem_Take *, parent take pointer (if any)
pub fn GetEnvelopeInfo_Value(tr: *TrackEnvelope, parmname: [*:0]const u8) f64 {
	return fnPtrs.GetEnvelopeInfo_Value(tr, parmname);
}

/// GetEnvelopeName
pub fn GetEnvelopeName(env: *TrackEnvelope, bufOut: [*:0]u8, bufOut_sz: c_int) bool {
	return fnPtrs.GetEnvelopeName(env, bufOut, bufOut_sz);
}

/// GetEnvelopePoint
/// Get the attributes of an envelope point. See GetEnvelopePointEx.
pub fn GetEnvelopePoint(envelope: *TrackEnvelope, ptidx: c_int, timeOutOptional: *f64, valueOutOptional: *f64, shapeOutOptional: *c_int, tensionOutOptional: *f64, selectedOutOptional: *bool) bool {
	return fnPtrs.GetEnvelopePoint(envelope, ptidx, timeOutOptional, valueOutOptional, shapeOutOptional, tensionOutOptional, selectedOutOptional);
}

/// GetEnvelopePointByTime
/// Returns the envelope point at or immediately prior to the given time position. See GetEnvelopePointByTimeEx.
pub fn GetEnvelopePointByTime(envelope: *TrackEnvelope, time: f64) c_int {
	return fnPtrs.GetEnvelopePointByTime(envelope, time);
}

/// GetEnvelopePointByTimeEx
/// Returns the envelope point at or immediately prior to the given time position.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See GetEnvelopePointEx, SetEnvelopePointEx, InsertEnvelopePointEx, DeleteEnvelopePointEx.
pub fn GetEnvelopePointByTimeEx(envelope: *TrackEnvelope, autoitem_idx: c_int, time: f64) c_int {
	return fnPtrs.GetEnvelopePointByTimeEx(envelope, autoitem_idx, time);
}

/// GetEnvelopePointEx
/// Get the attributes of an envelope point.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See CountEnvelopePointsEx, SetEnvelopePointEx, InsertEnvelopePointEx, DeleteEnvelopePointEx.
pub fn GetEnvelopePointEx(envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int, timeOutOptional: *f64, valueOutOptional: *f64, shapeOutOptional: *c_int, tensionOutOptional: *f64, selectedOutOptional: *bool) bool {
	return fnPtrs.GetEnvelopePointEx(envelope, autoitem_idx, ptidx, timeOutOptional, valueOutOptional, shapeOutOptional, tensionOutOptional, selectedOutOptional);
}

/// GetEnvelopeScalingMode
/// Returns the envelope scaling mode: 0=no scaling, 1=fader scaling. All API functions deal with raw envelope point values, to convert raw from/to scaled values see ScaleFromEnvelopeMode, ScaleToEnvelopeMode.
pub fn GetEnvelopeScalingMode(env: *TrackEnvelope) c_int {
	return fnPtrs.GetEnvelopeScalingMode(env);
}

/// GetEnvelopeStateChunk
/// Gets the RPPXML state of an envelope, returns true if successful. Undo flag is a performance/caching hint.
pub fn GetEnvelopeStateChunk(env: *TrackEnvelope, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) bool {
	return fnPtrs.GetEnvelopeStateChunk(env, strNeedBig, strNeedBig_sz, isundoOptional);
}

/// GetExePath
/// returns path of REAPER.exe (not including EXE), i.e. C:\Program Files\REAPER
pub fn GetExePath() [*:0]const u8 {
	return fnPtrs.GetExePath();
}

/// GetExtState
/// Get the extended state value for a specific section and key. See SetExtState, DeleteExtState, HasExtState.
pub fn GetExtState(section: [*:0]const u8, key: [*:0]const u8) [*:0]const u8 {
	return fnPtrs.GetExtState(section, key);
}

/// GetFocusedFX
/// This function is deprecated (returns GetFocusedFX2()&3), see GetFocusedFX2.
pub fn GetFocusedFX(tracknumberOut: *c_int, itemnumberOut: *c_int, fxnumberOut: *c_int) c_int {
	return fnPtrs.GetFocusedFX(tracknumberOut, itemnumberOut, fxnumberOut);
}

/// GetFocusedFX2
/// Return value has 1 set if track FX, 2 if take/item FX, 4 set if FX is no longer focused but still open. tracknumber==0 means the master track, 1 means track 1, etc. itemnumber is zero-based (or -1 if not an item). For interpretation of fxnumber, see GetLastTouchedFX.
pub fn GetFocusedFX2(tracknumberOut: *c_int, itemnumberOut: *c_int, fxnumberOut: *c_int) c_int {
	return fnPtrs.GetFocusedFX2(tracknumberOut, itemnumberOut, fxnumberOut);
}

/// GetFreeDiskSpaceForRecordPath
/// returns free disk space in megabytes, pathIdx 0 for normal, 1 for alternate.
pub fn GetFreeDiskSpaceForRecordPath(proj: *ReaProject, pathidx: c_int) c_int {
	return fnPtrs.GetFreeDiskSpaceForRecordPath(proj, pathidx);
}

/// GetFXEnvelope
/// Returns the FX parameter envelope. If the envelope does not exist and create=true, the envelope will be created.
pub fn GetFXEnvelope(track: *MediaTrack, fxindex: c_int, parameterindex: c_int, create: bool) ?*anyopaque {
	return fnPtrs.GetFXEnvelope(track, fxindex, parameterindex, create);
}

/// GetGlobalAutomationOverride
/// return -1=no override, 0=trim/read, 1=read, 2=touch, 3=write, 4=latch, 5=bypass
pub fn GetGlobalAutomationOverride() c_int {
	return fnPtrs.GetGlobalAutomationOverride();
}

/// GetHZoomLevel
/// returns pixels/second
pub fn GetHZoomLevel() f64 {
	return fnPtrs.GetHZoomLevel();
}

/// GetIconThemePointer
/// returns a named icontheme entry
pub fn GetIconThemePointer(name: [*:0]const u8) ?*anyopaque {
	return fnPtrs.GetIconThemePointer(name);
}

/// GetIconThemePointerForDPI
/// returns a named icontheme entry for a given DPI-scaling (256=1:1). Note: the return value should not be stored, it should be queried at each paint! Querying name=NULL returns the start of the structure
pub fn GetIconThemePointerForDPI(name: [*:0]const u8, dpisc: c_int) ?*anyopaque {
	return fnPtrs.GetIconThemePointerForDPI(name, dpisc);
}

/// GetIconThemeStruct
/// returns a pointer to the icon theme (icontheme.h) and the size of that struct
pub fn GetIconThemeStruct(szOut: *c_int) ?*anyopaque {
	return fnPtrs.GetIconThemeStruct(szOut);
}

/// GetInputChannelName
pub fn GetInputChannelName(channelIndex: c_int) [*:0]const u8 {
	return fnPtrs.GetInputChannelName(channelIndex);
}

/// GetInputOutputLatency
/// Gets the audio device input/output latency in samples
pub fn GetInputOutputLatency(inputlatencyOut: *c_int, outputLatencyOut: *c_int) void  {
	return fnPtrs.GetInputOutputLatency(inputlatencyOut, outputLatencyOut);
}

/// GetItemEditingTime2
/// returns time of relevant edit, set which_item to the pcm_source (if applicable), flags (if specified) will be set to 1 for edge resizing, 2 for fade change, 4 for item move, 8 for item slip edit (edit cursor time or start of item)
pub fn GetItemEditingTime2(which_itemOut: *PCM_source, flagsOut: *c_int) f64 {
	return fnPtrs.GetItemEditingTime2(which_itemOut, flagsOut);
}

/// GetItemFromPoint
/// Returns the first item at the screen coordinates specified. If allow_locked is false, locked items are ignored. If takeOutOptional specified, returns the take hit.
pub fn GetItemFromPoint(screen_x: c_int, screen_y: c_int, allow_locked: bool, takeOutOptional: *MediaItem_Take) ?*anyopaque {
	return fnPtrs.GetItemFromPoint(screen_x, screen_y, allow_locked, takeOutOptional);
}

/// GetItemProjectContext
pub fn GetItemProjectContext(item: *MediaItem) ?*anyopaque {
	return fnPtrs.GetItemProjectContext(item);
}

/// GetItemStateChunk
/// Gets the RPPXML state of an item, returns true if successful. Undo flag is a performance/caching hint.
pub fn GetItemStateChunk(item: *MediaItem, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) bool {
	return fnPtrs.GetItemStateChunk(item, strNeedBig, strNeedBig_sz, isundoOptional);
}

/// GetLastColorThemeFile
pub fn GetLastColorThemeFile() [*:0]const u8 {
	return fnPtrs.GetLastColorThemeFile();
}

/// GetLastMarkerAndCurRegion
/// Get the last project marker before time, and/or the project region that includes time. markeridx and regionidx are returned not necessarily as the displayed marker/region index, but as the index that can be passed to EnumProjectMarkers. Either or both of markeridx and regionidx may be NULL. See EnumProjectMarkers.
pub fn GetLastMarkerAndCurRegion(proj: *ReaProject, time: f64, markeridxOut: *c_int, regionidxOut: *c_int) void  {
	return fnPtrs.GetLastMarkerAndCurRegion(proj, time, markeridxOut, regionidxOut);
}

/// GetLastTouchedFX
/// Returns true if the last touched FX parameter is valid, false otherwise. The low word of tracknumber is the 1-based track index -- 0 means the master track, 1 means track 1, etc. If the high word of tracknumber is nonzero, it refers to the 1-based item index (1 is the first item on the track, etc). For track FX, the low 24 bits of fxnumber refer to the FX index in the chain, and if the next 8 bits are 01, then the FX is record FX. For item FX, the low word defines the FX index in the chain, and the high word defines the take number.
pub fn GetLastTouchedFX(tracknumberOut: *c_int, fxnumberOut: *c_int, paramnumberOut: *c_int) bool {
	return fnPtrs.GetLastTouchedFX(tracknumberOut, fxnumberOut, paramnumberOut);
}

/// GetLastTouchedTrack
pub fn GetLastTouchedTrack() ?*anyopaque {
	return fnPtrs.GetLastTouchedTrack();
}

/// GetMainHwnd
pub fn GetMainHwnd() HWND  {
	return fnPtrs.GetMainHwnd();
}

/// GetMasterMuteSoloFlags
/// &1=master mute,&2=master solo. This is deprecated as you can just query the master track as well.
pub fn GetMasterMuteSoloFlags() c_int {
	return fnPtrs.GetMasterMuteSoloFlags();
}

/// GetMasterTrack
pub fn GetMasterTrack(proj: *ReaProject) ?*anyopaque {
	return fnPtrs.GetMasterTrack(proj);
}

/// GetMasterTrackVisibility
/// returns &1 if the master track is visible in the TCP, &2 if visible in the mixer. See SetMasterTrackVisibility.
pub fn GetMasterTrackVisibility() c_int {
	return fnPtrs.GetMasterTrackVisibility();
}

/// GetMaxMidiInputs
/// returns max dev for midi inputs/outputs
pub fn GetMaxMidiInputs() c_int {
	return fnPtrs.GetMaxMidiInputs();
}

/// GetMaxMidiOutputs
pub fn GetMaxMidiOutputs() c_int {
	return fnPtrs.GetMaxMidiOutputs();
}

/// GetMediaFileMetadata
/// Get text-based metadata from a media file for a given identifier. Call with identifier="" to list all identifiers contained in the file, separated by newlines. May return "[Binary data]" for metadata that REAPER doesn't handle.
pub fn GetMediaFileMetadata(mediaSource: *PCM_source, identifier: [*:0]const u8, bufOutNeedBig: [*:0]u8, bufOutNeedBig_sz: c_int) c_int {
	return fnPtrs.GetMediaFileMetadata(mediaSource, identifier, bufOutNeedBig, bufOutNeedBig_sz);
}

/// GetMediaItem
/// get an item from a project by item count (zero-based) (proj=0 for active project)
pub fn GetMediaItem(proj: *ReaProject, itemidx: c_int) ?*anyopaque {
	return fnPtrs.GetMediaItem(proj, itemidx);
}

/// GetMediaItem_Track
/// Get parent track of media item
pub fn GetMediaItem_Track(item: *MediaItem) ?*anyopaque {
	return fnPtrs.GetMediaItem_Track(item);
}

/// GetMediaItemInfo_Value
/// Get media item numerical-value attributes.
/// B_MUTE : bool * : muted (item solo overrides). setting this value will clear C_MUTE_SOLO.
/// B_MUTE_ACTUAL : bool * : muted (ignores solo). setting this value will not affect C_MUTE_SOLO.
/// C_MUTE_SOLO : char * : solo override (-1=soloed, 0=no override, 1=unsoloed). note that this API does not automatically unsolo other items when soloing (nor clear the unsolos when clearing the last soloed item), it must be done by the caller via action or via this API.
/// B_LOOPSRC : bool * : loop source
/// B_ALLTAKESPLAY : bool * : all takes play
/// B_UISEL : bool * : selected in arrange view
/// C_BEATATTACHMODE : char * : item timebase, -1=track or project default, 1=beats (position, length, rate), 2=beats (position only). for auto-stretch timebase: C_BEATATTACHMODE=1, C_AUTOSTRETCH=1
/// C_AUTOSTRETCH: : char * : auto-stretch at project tempo changes, 1=enabled, requires C_BEATATTACHMODE=1
/// C_LOCK : char * : locked, &1=locked
/// D_VOL : double * : item volume,  0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_POSITION : double * : item position in seconds
/// D_LENGTH : double * : item length in seconds
/// D_SNAPOFFSET : double * : item snap offset in seconds
/// D_FADEINLEN : double * : item manual fadein length in seconds
/// D_FADEOUTLEN : double * : item manual fadeout length in seconds
/// D_FADEINDIR : double * : item fadein curvature, -1..1
/// D_FADEOUTDIR : double * : item fadeout curvature, -1..1
/// D_FADEINLEN_AUTO : double * : item auto-fadein length in seconds, -1=no auto-fadein
/// D_FADEOUTLEN_AUTO : double * : item auto-fadeout length in seconds, -1=no auto-fadeout
/// C_FADEINSHAPE : int * : fadein shape, 0..6, 0=linear
/// C_FADEOUTSHAPE : int * : fadeout shape, 0..6, 0=linear
/// I_GROUPID : int * : group ID, 0=no group
/// I_LASTY : int * : Y-position of track in pixels (read-only)
/// I_LASTH : int * : height in track in pixels (read-only)
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_CURTAKE : int * : active take number
/// IP_ITEMNUMBER : int, item number on this track (read-only, returns the item number directly)
/// F_FREEMODE_Y : float * : free item positioning Y-position, 0=top of track, 1=bottom of track (will never be 1)
/// F_FREEMODE_H : float * : free item positioning height, 0=no height, 1=full height of track (will never be 0)
/// P_TRACK : MediaTrack * (read-only)
/// 
pub fn GetMediaItemInfo_Value(item: *MediaItem, parmname: [*:0]const u8) f64 {
	return fnPtrs.GetMediaItemInfo_Value(item, parmname);
}

/// GetMediaItemNumTakes
pub fn GetMediaItemNumTakes(item: *MediaItem) c_int {
	return fnPtrs.GetMediaItemNumTakes(item);
}

/// GetMediaItemTake
pub fn GetMediaItemTake(item: *MediaItem, tk: c_int) ?*anyopaque {
	return fnPtrs.GetMediaItemTake(item, tk);
}

/// GetMediaItemTake_Item
/// Get parent item of media item take
pub fn GetMediaItemTake_Item(take: *MediaItem_Take) ?*anyopaque {
	return fnPtrs.GetMediaItemTake_Item(take);
}

/// GetMediaItemTake_Peaks
/// Gets block of peak samples to buf. Note that the peak samples are interleaved, but in two or three blocks (maximums, then minimums, then extra). Return value has 20 bits of returned sample count, then 4 bits of output_mode (0xf00000), then a bit to signify whether extra_type was available (0x1000000). extra_type can be 115 ('s') for spectral information, which will return peak samples as integers with the low 15 bits frequency, next 14 bits tonality.
pub fn GetMediaItemTake_Peaks(take: *MediaItem_Take, peakrate: f64, starttime: f64, numchannels: c_int, numsamplesperchannel: c_int, want_extra_type: c_int, buf: *f64) c_int {
	return fnPtrs.GetMediaItemTake_Peaks(take, peakrate, starttime, numchannels, numsamplesperchannel, want_extra_type, buf);
}

/// GetMediaItemTake_Source
/// Get media source of media item take
pub fn GetMediaItemTake_Source(take: *MediaItem_Take) ?*anyopaque {
	return fnPtrs.GetMediaItemTake_Source(take);
}

/// GetMediaItemTake_Track
/// Get parent track of media item take
pub fn GetMediaItemTake_Track(take: *MediaItem_Take) ?*anyopaque {
	return fnPtrs.GetMediaItemTake_Track(take);
}

/// GetMediaItemTakeByGUID
pub fn GetMediaItemTakeByGUID(project: *ReaProject, guid: *const GUID) ?*anyopaque {
	return fnPtrs.GetMediaItemTakeByGUID(project, guid);
}

/// GetMediaItemTakeInfo_Value
/// Get media item take numerical-value attributes.
/// D_STARTOFFS : double * : start offset in source media, in seconds
/// D_VOL : double * : take volume, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc, negative if take polarity is flipped
/// D_PAN : double * : take pan, -1..1
/// D_PANLAW : double * : take pan law, -1=default, 0.5=-6dB, 1.0=+0dB, etc
/// D_PLAYRATE : double * : take playback rate, 0.5=half speed, 1=normal, 2=double speed, etc
/// D_PITCH : double * : take pitch adjustment in semitones, -12=one octave down, 0=normal, +12=one octave up, etc
/// B_PPITCH : bool * : preserve pitch when changing playback rate
/// I_CHANMODE : int * : channel mode, 0=normal, 1=reverse stereo, 2=downmix, 3=left, 4=right
/// I_PITCHMODE : int * : pitch shifter mode, -1=projext default, otherwise high 2 bytes=shifter, low 2 bytes=parameter
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// IP_TAKENUMBER : int : take number (read-only, returns the take number directly)
/// P_TRACK : pointer to MediaTrack (read-only)
/// P_ITEM : pointer to MediaItem (read-only)
/// P_SOURCE : PCM_source *. Note that if setting this, you should first retrieve the old source, set the new, THEN delete the old.
/// 
pub fn GetMediaItemTakeInfo_Value(take: *MediaItem_Take, parmname: [*:0]const u8) f64 {
	return fnPtrs.GetMediaItemTakeInfo_Value(take, parmname);
}

/// GetMediaItemTrack
pub fn GetMediaItemTrack(item: *MediaItem) ?*anyopaque {
	return fnPtrs.GetMediaItemTrack(item);
}

/// GetMediaSourceFileName
/// Copies the media source filename to typebuf. Note that in-project MIDI media sources have no associated filename. See GetMediaSourceParent.
pub fn GetMediaSourceFileName(source: *PCM_source, filenamebuf: [*:0]u8, filenamebuf_sz: c_int) void  {
	return fnPtrs.GetMediaSourceFileName(source, filenamebuf, filenamebuf_sz);
}

/// GetMediaSourceLength
/// Returns the length of the source media. If the media source is beat-based, the length will be in quarter notes, otherwise it will be in seconds.
pub fn GetMediaSourceLength(source: *PCM_source, lengthIsQNOut: *bool) f64 {
	return fnPtrs.GetMediaSourceLength(source, lengthIsQNOut);
}

/// GetMediaSourceNumChannels
/// Returns the number of channels in the source media.
pub fn GetMediaSourceNumChannels(source: *PCM_source) c_int {
	return fnPtrs.GetMediaSourceNumChannels(source);
}

/// GetMediaSourceParent
/// Returns the parent source, or NULL if src is the root source. This can be used to retrieve the parent properties of sections or reversed sources for example.
pub fn GetMediaSourceParent(src: *PCM_source) ?*anyopaque {
	return fnPtrs.GetMediaSourceParent(src);
}

/// GetMediaSourceSampleRate
/// Returns the sample rate. MIDI source media will return zero.
pub fn GetMediaSourceSampleRate(source: *PCM_source) c_int {
	return fnPtrs.GetMediaSourceSampleRate(source);
}

/// GetMediaSourceType
/// copies the media source type ("WAV", "MIDI", etc) to typebuf
pub fn GetMediaSourceType(source: *PCM_source, typebuf: [*:0]u8, typebuf_sz: c_int) void  {
	return fnPtrs.GetMediaSourceType(source, typebuf, typebuf_sz);
}

/// GetMediaTrackInfo_Value
/// Get track numerical-value attributes.
/// B_MUTE : bool * : muted
/// B_PHASE : bool * : track phase inverted
/// B_RECMON_IN_EFFECT : bool * : record monitoring in effect (current audio-thread playback state, read-only)
/// IP_TRACKNUMBER : int : track number 1-based, 0=not found, -1=master track (read-only, returns the int directly)
/// I_SOLO : int * : soloed, 0=not soloed, 1=soloed, 2=soloed in place, 5=safe soloed, 6=safe soloed in place
/// I_FXEN : int * : fx enabled, 0=bypassed, !0=fx active
/// I_RECARM : int * : record armed, 0=not record armed, 1=record armed
/// I_RECINPUT : int * : record input, <0=no input. if 4096 set, input is MIDI and low 5 bits represent channel (0=all, 1-16=only chan), next 6 bits represent physical input (63=all, 62=VKB). If 4096 is not set, low 10 bits (0..1023) are input start channel (ReaRoute/Loopback start at 512). If 2048 is set, input is multichannel input (using track channel count), or if 1024 is set, input is stereo input, otherwise input is mono.
/// I_RECMODE : int * : record mode, 0=input, 1=stereo out, 2=none, 3=stereo out w/latency compensation, 4=midi output, 5=mono out, 6=mono out w/ latency compensation, 7=midi overdub, 8=midi replace
/// I_RECMON : int * : record monitoring, 0=off, 1=normal, 2=not when playing (tape style)
/// I_RECMONITEMS : int * : monitor items while recording, 0=off, 1=on
/// I_AUTOMODE : int * : track automation mode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch
/// I_NCHAN : int * : number of track channels, 2-64, even numbers only
/// I_SELECTED : int * : track selected, 0=unselected, 1=selected
/// I_WNDH : int * : current TCP window height in pixels including envelopes (read-only)
/// I_TCPH : int * : current TCP window height in pixels not including envelopes (read-only)
/// I_TCPY : int * : current TCP window Y-position in pixels relative to top of arrange view (read-only)
/// I_MCPX : int * : current MCP X-position in pixels relative to mixer container
/// I_MCPY : int * : current MCP Y-position in pixels relative to mixer container
/// I_MCPW : int * : current MCP width in pixels
/// I_MCPH : int * : current MCP height in pixels
/// I_FOLDERDEPTH : int * : folder depth change, 0=normal, 1=track is a folder parent, -1=track is the last in the innermost folder, -2=track is the last in the innermost and next-innermost folders, etc
/// I_FOLDERCOMPACT : int * : folder compacted state (only valid on folders), 0=normal, 1=small, 2=tiny children
/// I_MIDIHWOUT : int * : track midi hardware output index, <0=disabled, low 5 bits are which channels (0=all, 1-16), next 5 bits are output device index (0-31)
/// I_PERFFLAGS : int * : track performance flags, &1=no media buffering, &2=no anticipative FX
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_HEIGHTOVERRIDE : int * : custom height override for TCP window, 0 for none, otherwise size in pixels
/// B_HEIGHTLOCK : bool * : track height lock (must set I_HEIGHTOVERRIDE before locking)
/// D_VOL : double * : trim volume of track, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_PAN : double * : trim pan of track, -1..1
/// D_WIDTH : double * : width of track, -1..1
/// D_DUALPANL : double * : dualpan position 1, -1..1, only if I_PANMODE==6
/// D_DUALPANR : double * : dualpan position 2, -1..1, only if I_PANMODE==6
/// I_PANMODE : int * : pan mode, 0=classic 3.x, 3=new balance, 5=stereo pan, 6=dual pan
/// D_PANLAW : double * : pan law of track, <0=project default, 1=+0dB, etc
/// P_ENV:<envchunkname : TrackEnvelope*, read only. Call with :<VOLENV, :<PANENV, etc appended.
/// B_SHOWINMIXER : bool * : track control panel visible in mixer (do not use on master track)
/// B_SHOWINTCP : bool * : track control panel visible in arrange view (do not use on master track)
/// B_MAINSEND : bool * : track sends audio to parent
/// C_MAINSEND_OFFS : char * : channel offset of track send to parent
/// B_FREEMODE : bool * : track free item positioning enabled (call UpdateTimeline() after changing)
/// C_BEATATTACHMODE : char * : track timebase, -1=project default, 0=time, 1=beats (position, length, rate), 2=beats (position only)
/// F_MCP_FXSEND_SCALE : float * : scale of fx+send area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_FXPARM_SCALE : float * : scale of fx parameter area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_SENDRGN_SCALE : float * : scale of send area as proportion of the fx+send total area (0=minimum allowed, 1=maximum allowed)
/// F_TCP_FXPARM_SCALE : float * : scale of TCP parameter area when TCP FX are embedded (0=min allowed, default, 1=max allowed)
/// I_PLAY_OFFSET_FLAG : int * : track playback offset state, &1=bypassed, &2=offset value is measured in samples (otherwise measured in seconds)
/// D_PLAY_OFFSET : double * : track playback offset, units depend on I_PLAY_OFFSET_FLAG
/// P_PARTRACK : MediaTrack * : parent track (read-only)
/// P_PROJECT : ReaProject * : parent project (read-only)
/// 
pub fn GetMediaTrackInfo_Value(tr: *MediaTrack, parmname: [*:0]const u8) f64 {
	return fnPtrs.GetMediaTrackInfo_Value(tr, parmname);
}

/// GetMIDIInputName
/// returns true if device present
pub fn GetMIDIInputName(dev: c_int, nameout: [*:0]u8, nameout_sz: c_int) bool {
	return fnPtrs.GetMIDIInputName(dev, nameout, nameout_sz);
}

/// GetMIDIOutputName
/// returns true if device present
pub fn GetMIDIOutputName(dev: c_int, nameout: [*:0]u8, nameout_sz: c_int) bool {
	return fnPtrs.GetMIDIOutputName(dev, nameout, nameout_sz);
}

/// GetMixerScroll
/// Get the leftmost track visible in the mixer
pub fn GetMixerScroll() ?*anyopaque {
	return fnPtrs.GetMixerScroll();
}

/// GetMouseModifier
/// Get the current mouse modifier assignment for a specific modifier key assignment, in a specific context.
/// action will be filled in with the command ID number for a built-in mouse modifier
/// or built-in REAPER command ID, or the custom action ID string.
/// See SetMouseModifier for more information.
/// 
pub fn GetMouseModifier(context: [*:0]const u8, modifier_flag: c_int, action: [*:0]u8, action_sz: c_int) void  {
	return fnPtrs.GetMouseModifier(context, modifier_flag, action, action_sz);
}

/// GetMousePosition
/// get mouse position in screen coordinates
pub fn GetMousePosition(xOut: *c_int, yOut: *c_int) void  {
	return fnPtrs.GetMousePosition(xOut, yOut);
}

/// GetNumAudioInputs
/// Return number of normal audio hardware inputs available
pub fn GetNumAudioInputs() c_int {
	return fnPtrs.GetNumAudioInputs();
}

/// GetNumAudioOutputs
/// Return number of normal audio hardware outputs available
pub fn GetNumAudioOutputs() c_int {
	return fnPtrs.GetNumAudioOutputs();
}

/// GetNumMIDIInputs
/// returns max number of real midi hardware inputs
pub fn GetNumMIDIInputs() c_int {
	return fnPtrs.GetNumMIDIInputs();
}

/// GetNumMIDIOutputs
/// returns max number of real midi hardware outputs
pub fn GetNumMIDIOutputs() c_int {
	return fnPtrs.GetNumMIDIOutputs();
}

/// GetNumTakeMarkers
/// Returns number of take markers. See GetTakeMarker, SetTakeMarker, DeleteTakeMarker
pub fn GetNumTakeMarkers(take: *MediaItem_Take) c_int {
	return fnPtrs.GetNumTakeMarkers(take);
}

/// GetNumTracks
pub fn GetNumTracks() c_int {
	return fnPtrs.GetNumTracks();
}

/// GetOS
/// Returns "Win32", "Win64", "OSX32", "OSX64", "macOS-arm64", or "Other".
pub fn GetOS() [*:0]const u8 {
	return fnPtrs.GetOS();
}

/// GetOutputChannelName
pub fn GetOutputChannelName(channelIndex: c_int) [*:0]const u8 {
	return fnPtrs.GetOutputChannelName(channelIndex);
}

/// GetOutputLatency
/// returns output latency in seconds
pub fn GetOutputLatency() f64 {
	return fnPtrs.GetOutputLatency();
}

/// GetParentTrack
pub fn GetParentTrack(track: *MediaTrack) ?*anyopaque {
	return fnPtrs.GetParentTrack(track);
}

/// GetPeakFileName
/// get the peak file name for a given file (can be either filename.reapeaks,or a hashed filename in another path)
pub fn GetPeakFileName(fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int) void  {
	return fnPtrs.GetPeakFileName(fnOut, buf, buf_sz);
}

/// GetPeakFileNameEx
/// get the peak file name for a given file (can be either filename.reapeaks,or a hashed filename in another path)
pub fn GetPeakFileNameEx(fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int, forWrite: bool) void  {
	return fnPtrs.GetPeakFileNameEx(fnOut, buf, buf_sz, forWrite);
}

/// GetPeakFileNameEx2
/// Like GetPeakFileNameEx, but you can specify peaksfileextension such as ".reapeaks"
pub fn GetPeakFileNameEx2(fnOut: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int, forWrite: bool, peaksfileextension: [*:0]const u8) void  {
	return fnPtrs.GetPeakFileNameEx2(fnOut, buf, buf_sz, forWrite, peaksfileextension);
}

/// GetPeaksBitmap
/// see note in reaper_plugin.h about PCM_source_peaktransfer_t::samplerate
pub fn GetPeaksBitmap(pks: *PCM_source_peaktransfer_t, maxamp: f64, w: c_int, h: c_int, bmp: *LICE_IBitmap) ?*anyopaque {
	return fnPtrs.GetPeaksBitmap(pks, maxamp, w, h, bmp);
}

/// GetPlayPosition
/// returns latency-compensated actual-what-you-hear position
pub fn GetPlayPosition() f64 {
	return fnPtrs.GetPlayPosition();
}

/// GetPlayPosition2
/// returns position of next audio block being processed
pub fn GetPlayPosition2() f64 {
	return fnPtrs.GetPlayPosition2();
}

/// GetPlayPosition2Ex
/// returns position of next audio block being processed
pub fn GetPlayPosition2Ex(proj: *ReaProject) f64 {
	return fnPtrs.GetPlayPosition2Ex(proj);
}

/// GetPlayPositionEx
/// returns latency-compensated actual-what-you-hear position
pub fn GetPlayPositionEx(proj: *ReaProject) f64 {
	return fnPtrs.GetPlayPositionEx(proj);
}

/// GetPlayState
/// &1=playing,&2=pause,&=4 is recording
pub fn GetPlayState() c_int {
	return fnPtrs.GetPlayState();
}

/// GetPlayStateEx
/// &1=playing,&2=pause,&=4 is recording
pub fn GetPlayStateEx(proj: *ReaProject) c_int {
	return fnPtrs.GetPlayStateEx(proj);
}

/// GetPreferredDiskReadMode
/// Gets user configured preferred disk read mode. mode/nb/bs are all parameters that should be passed to WDL_FileRead, see for more information.
pub fn GetPreferredDiskReadMode(mode: *c_int, nb: *c_int, bs: *c_int) void  {
	return fnPtrs.GetPreferredDiskReadMode(mode, nb, bs);
}

/// GetPreferredDiskReadModePeak
/// Gets user configured preferred disk read mode for use when building peaks. mode/nb/bs are all parameters that should be passed to WDL_FileRead, see for more information.
pub fn GetPreferredDiskReadModePeak(mode: *c_int, nb: *c_int, bs: *c_int) void  {
	return fnPtrs.GetPreferredDiskReadModePeak(mode, nb, bs);
}

/// GetPreferredDiskWriteMode
/// Gets user configured preferred disk write mode. nb will receive two values, the initial and maximum write buffer counts. mode/nb/bs are all parameters that should be passed to WDL_FileWrite, see for more information. 
pub fn GetPreferredDiskWriteMode(mode: *c_int, nb: *c_int, bs: *c_int) void  {
	return fnPtrs.GetPreferredDiskWriteMode(mode, nb, bs);
}

/// GetProjectLength
/// returns length of project (maximum of end of media item, markers, end of regions, tempo map
pub fn GetProjectLength(proj: *ReaProject) f64 {
	return fnPtrs.GetProjectLength(proj);
}

/// GetProjectName
pub fn GetProjectName(proj: *ReaProject, buf: [*:0]u8, buf_sz: c_int) void  {
	return fnPtrs.GetProjectName(proj, buf, buf_sz);
}

/// GetProjectPath
/// Get the project recording path.
pub fn GetProjectPath(buf: [*:0]u8, buf_sz: c_int) void  {
	return fnPtrs.GetProjectPath(buf, buf_sz);
}

/// GetProjectPathEx
/// Get the project recording path.
pub fn GetProjectPathEx(proj: *ReaProject, buf: [*:0]u8, buf_sz: c_int) void  {
	return fnPtrs.GetProjectPathEx(proj, buf, buf_sz);
}

/// GetProjectStateChangeCount
/// returns an integer that changes when the project state changes
pub fn GetProjectStateChangeCount(proj: *ReaProject) c_int {
	return fnPtrs.GetProjectStateChangeCount(proj);
}

/// GetProjectTimeOffset
/// Gets project time offset in seconds (project settings - project start time). If rndframe is true, the offset is rounded to a multiple of the project frame size.
pub fn GetProjectTimeOffset(proj: *ReaProject, rndframe: bool) f64 {
	return fnPtrs.GetProjectTimeOffset(proj, rndframe);
}

/// GetProjectTimeSignature
/// deprecated
pub fn GetProjectTimeSignature(bpmOut: *f64, bpiOut: *f64) void  {
	return fnPtrs.GetProjectTimeSignature(bpmOut, bpiOut);
}

/// GetProjectTimeSignature2
/// Gets basic time signature (beats per minute, numerator of time signature in bpi)
/// this does not reflect tempo envelopes but is purely what is set in the project settings.
pub fn GetProjectTimeSignature2(proj: *ReaProject, bpmOut: *f64, bpiOut: *f64) void  {
	return fnPtrs.GetProjectTimeSignature2(proj, bpmOut, bpiOut);
}

/// GetProjExtState
/// Get the value previously associated with this extname and key, the last time the project was saved. See SetProjExtState, EnumProjExtState.
pub fn GetProjExtState(proj: *ReaProject, extname: [*:0]const u8, key: [*:0]const u8, valOutNeedBig: [*:0]u8, valOutNeedBig_sz: c_int) c_int {
	return fnPtrs.GetProjExtState(proj, extname, key, valOutNeedBig, valOutNeedBig_sz);
}

/// GetResourcePath
/// returns path where ini files are stored, other things are in subdirectories.
pub fn GetResourcePath() [*:0]const u8 {
	return fnPtrs.GetResourcePath();
}

/// GetSelectedEnvelope
/// get the currently selected envelope, returns NULL/nil if no envelope is selected
pub fn GetSelectedEnvelope(proj: *ReaProject) ?*anyopaque {
	return fnPtrs.GetSelectedEnvelope(proj);
}

/// GetSelectedMediaItem
/// get a selected item by selected item count (zero-based) (proj=0 for active project)
pub fn GetSelectedMediaItem(proj: *ReaProject, selitem: c_int) ?*anyopaque {
	return fnPtrs.GetSelectedMediaItem(proj, selitem);
}

/// GetSelectedTrack
/// Get a selected track from a project (proj=0 for active project) by selected track count (zero-based). This function ignores the master track, see GetSelectedTrack2.
pub fn GetSelectedTrack(proj: *ReaProject, seltrackidx: c_int) ?*anyopaque {
	return fnPtrs.GetSelectedTrack(proj, seltrackidx);
}

/// GetSelectedTrack2
/// Get a selected track from a project (proj=0 for active project) by selected track count (zero-based).
pub fn GetSelectedTrack2(proj: *ReaProject, seltrackidx: c_int, wantmaster: bool) ?*anyopaque {
	return fnPtrs.GetSelectedTrack2(proj, seltrackidx, wantmaster);
}

/// GetSelectedTrackEnvelope
/// get the currently selected track envelope, returns NULL/nil if no envelope is selected
pub fn GetSelectedTrackEnvelope(proj: *ReaProject) ?*anyopaque {
	return fnPtrs.GetSelectedTrackEnvelope(proj);
}

/// GetSet_ArrangeView2
/// Gets or sets the arrange view start/end time for screen coordinates. use screen_x_start=screen_x_end=0 to use the full arrange view's start/end time
pub fn GetSet_ArrangeView2(proj: *ReaProject, isSet: bool, screen_x_start: c_int, screen_x_end: c_int, start_timeOut: *f64, end_timeOut: *f64) void  {
	return fnPtrs.GetSet_ArrangeView2(proj, isSet, screen_x_start, screen_x_end, start_timeOut, end_timeOut);
}

/// GetSet_LoopTimeRange
pub fn GetSet_LoopTimeRange(isSet: bool, isLoop: bool, startOut: *f64, endOut: *f64, allowautoseek: bool) void  {
	return fnPtrs.GetSet_LoopTimeRange(isSet, isLoop, startOut, endOut, allowautoseek);
}

/// GetSet_LoopTimeRange2
pub fn GetSet_LoopTimeRange2(proj: *ReaProject, isSet: bool, isLoop: bool, startOut: *f64, endOut: *f64, allowautoseek: bool) void  {
	return fnPtrs.GetSet_LoopTimeRange2(proj, isSet, isLoop, startOut, endOut, allowautoseek);
}

/// GetSetAutomationItemInfo
/// Get or set automation item information. autoitem_idx=0 for the first automation item on an envelope, 1 for the second item, etc. desc can be any of the following:
/// D_POOL_ID : double * : automation item pool ID (as an integer); edits are propagated to all other automation items that share a pool ID
/// D_POSITION : double * : automation item timeline position in seconds
/// D_LENGTH : double * : automation item length in seconds
/// D_STARTOFFS : double * : automation item start offset in seconds
/// D_PLAYRATE : double * : automation item playback rate
/// D_BASELINE : double * : automation item baseline value in the range [0,1]
/// D_AMPLITUDE : double * : automation item amplitude in the range [-1,1]
/// D_LOOPSRC : double * : nonzero if the automation item contents are looped
/// D_UISEL : double * : nonzero if the automation item is selected in the arrange view
/// D_POOL_QNLEN : double * : automation item pooled source length in quarter notes (setting will affect all pooled instances)
/// 
pub fn GetSetAutomationItemInfo(env: *TrackEnvelope, autoitem_idx: c_int, desc: [*:0]const u8, value: f64, is_set: bool) f64 {
	return fnPtrs.GetSetAutomationItemInfo(env, autoitem_idx, desc, value, is_set);
}

/// GetSetAutomationItemInfo_String
/// Get or set automation item information. autoitem_idx=0 for the first automation item on an envelope, 1 for the second item, etc. returns true on success. desc can be any of the following:
/// P_POOL_NAME : char *, name of the underlying automation item pool
/// P_POOL_EXT:xyz : char *, extension-specific persistent data
/// 
pub fn GetSetAutomationItemInfo_String(env: *TrackEnvelope, autoitem_idx: c_int, desc: [*:0]const u8, valuestrNeedBig: [*:0]u8, is_set: bool) bool {
	return fnPtrs.GetSetAutomationItemInfo_String(env, autoitem_idx, desc, valuestrNeedBig, is_set);
}

/// GetSetEnvelopeInfo_String
/// Gets/sets an attribute string:
/// P_EXT:xyz : char * : extension-specific persistent data
/// 
pub fn GetSetEnvelopeInfo_String(env: *TrackEnvelope, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) bool {
	return fnPtrs.GetSetEnvelopeInfo_String(env, parmname, stringNeedBig, setNewValue);
}

/// GetSetEnvelopeState
/// deprecated -- see SetEnvelopeStateChunk, GetEnvelopeStateChunk
pub fn GetSetEnvelopeState(env: *TrackEnvelope, str: [*:0]u8, str_sz: c_int) bool {
	return fnPtrs.GetSetEnvelopeState(env, str, str_sz);
}

/// GetSetEnvelopeState2
/// deprecated -- see SetEnvelopeStateChunk, GetEnvelopeStateChunk
pub fn GetSetEnvelopeState2(env: *TrackEnvelope, str: [*:0]u8, str_sz: c_int, isundo: bool) bool {
	return fnPtrs.GetSetEnvelopeState2(env, str, str_sz, isundo);
}

/// GetSetItemState
/// deprecated -- see SetItemStateChunk, GetItemStateChunk
pub fn GetSetItemState(item: *MediaItem, str: [*:0]u8, str_sz: c_int) bool {
	return fnPtrs.GetSetItemState(item, str, str_sz);
}

/// GetSetItemState2
/// deprecated -- see SetItemStateChunk, GetItemStateChunk
pub fn GetSetItemState2(item: *MediaItem, str: [*:0]u8, str_sz: c_int, isundo: bool) bool {
	return fnPtrs.GetSetItemState2(item, str, str_sz, isundo);
}

/// GetSetMediaItemInfo
/// P_TRACK : MediaTrack * (read-only)
/// B_MUTE : bool * : muted (item solo overrides). setting this value will clear C_MUTE_SOLO.
/// B_MUTE_ACTUAL : bool * : muted (ignores solo). setting this value will not affect C_MUTE_SOLO.
/// C_MUTE_SOLO : char * : solo override (-1=soloed, 0=no override, 1=unsoloed). note that this API does not automatically unsolo other items when soloing (nor clear the unsolos when clearing the last soloed item), it must be done by the caller via action or via this API.
/// B_LOOPSRC : bool * : loop source
/// B_ALLTAKESPLAY : bool * : all takes play
/// B_UISEL : bool * : selected in arrange view
/// C_BEATATTACHMODE : char * : item timebase, -1=track or project default, 1=beats (position, length, rate), 2=beats (position only). for auto-stretch timebase: C_BEATATTACHMODE=1, C_AUTOSTRETCH=1
/// C_AUTOSTRETCH: : char * : auto-stretch at project tempo changes, 1=enabled, requires C_BEATATTACHMODE=1
/// C_LOCK : char * : locked, &1=locked
/// D_VOL : double * : item volume,  0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_POSITION : double * : item position in seconds
/// D_LENGTH : double * : item length in seconds
/// D_SNAPOFFSET : double * : item snap offset in seconds
/// D_FADEINLEN : double * : item manual fadein length in seconds
/// D_FADEOUTLEN : double * : item manual fadeout length in seconds
/// D_FADEINDIR : double * : item fadein curvature, -1..1
/// D_FADEOUTDIR : double * : item fadeout curvature, -1..1
/// D_FADEINLEN_AUTO : double * : item auto-fadein length in seconds, -1=no auto-fadein
/// D_FADEOUTLEN_AUTO : double * : item auto-fadeout length in seconds, -1=no auto-fadeout
/// C_FADEINSHAPE : int * : fadein shape, 0..6, 0=linear
/// C_FADEOUTSHAPE : int * : fadeout shape, 0..6, 0=linear
/// I_GROUPID : int * : group ID, 0=no group
/// I_LASTY : int * : Y-position of track in pixels (read-only)
/// I_LASTH : int * : height in track in pixels (read-only)
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_CURTAKE : int * : active take number
/// IP_ITEMNUMBER : int, item number on this track (read-only, returns the item number directly)
/// F_FREEMODE_Y : float * : free item positioning Y-position, 0=top of track, 1=bottom of track (will never be 1)
/// F_FREEMODE_H : float * : free item positioning height, 0=no height, 1=full height of track (will never be 0)
/// P_NOTES : char * : item note text (do not write to returned pointer, use setNewValue to update)
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// 
pub fn GetSetMediaItemInfo(item: *MediaItem, parmname: [*:0]const u8, setNewValue: *anyopaque) ?*anyopaque {
	return fnPtrs.GetSetMediaItemInfo(item, parmname, setNewValue);
}

/// GetSetMediaItemInfo_String
/// Gets/sets an item attribute string:
/// P_NOTES : char * : item note text (do not write to returned pointer, use setNewValue to update)
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// 
pub fn GetSetMediaItemInfo_String(item: *MediaItem, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) bool {
	return fnPtrs.GetSetMediaItemInfo_String(item, parmname, stringNeedBig, setNewValue);
}

/// GetSetMediaItemTakeInfo
/// P_TRACK : pointer to MediaTrack (read-only)
/// P_ITEM : pointer to MediaItem (read-only)
/// P_SOURCE : PCM_source *. Note that if setting this, you should first retrieve the old source, set the new, THEN delete the old.
/// P_NAME : char * : take name
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// D_STARTOFFS : double * : start offset in source media, in seconds
/// D_VOL : double * : take volume, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc, negative if take polarity is flipped
/// D_PAN : double * : take pan, -1..1
/// D_PANLAW : double * : take pan law, -1=default, 0.5=-6dB, 1.0=+0dB, etc
/// D_PLAYRATE : double * : take playback rate, 0.5=half speed, 1=normal, 2=double speed, etc
/// D_PITCH : double * : take pitch adjustment in semitones, -12=one octave down, 0=normal, +12=one octave up, etc
/// B_PPITCH : bool * : preserve pitch when changing playback rate
/// I_CHANMODE : int * : channel mode, 0=normal, 1=reverse stereo, 2=downmix, 3=left, 4=right
/// I_PITCHMODE : int * : pitch shifter mode, -1=projext default, otherwise high 2 bytes=shifter, low 2 bytes=parameter
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// IP_TAKENUMBER : int : take number (read-only, returns the take number directly)
/// 
pub fn GetSetMediaItemTakeInfo(tk: *MediaItem_Take, parmname: [*:0]const u8, setNewValue: *anyopaque) ?*anyopaque {
	return fnPtrs.GetSetMediaItemTakeInfo(tk, parmname, setNewValue);
}

/// GetSetMediaItemTakeInfo_String
/// Gets/sets a take attribute string:
/// P_NAME : char * : take name
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// 
pub fn GetSetMediaItemTakeInfo_String(tk: *MediaItem_Take, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) bool {
	return fnPtrs.GetSetMediaItemTakeInfo_String(tk, parmname, stringNeedBig, setNewValue);
}

/// GetSetMediaTrackInfo
/// Get or set track attributes.
/// P_PARTRACK : MediaTrack * : parent track (read-only)
/// P_PROJECT : ReaProject * : parent project (read-only)
/// P_NAME : char * : track name (on master returns NULL)
/// P_ICON : const char * : track icon (full filename, or relative to resource_path/data/track_icons)
/// P_MCP_LAYOUT : const char * : layout name
/// P_TCP_LAYOUT : const char * : layout name
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// B_MUTE : bool * : muted
/// B_PHASE : bool * : track phase inverted
/// B_RECMON_IN_EFFECT : bool * : record monitoring in effect (current audio-thread playback state, read-only)
/// IP_TRACKNUMBER : int : track number 1-based, 0=not found, -1=master track (read-only, returns the int directly)
/// I_SOLO : int * : soloed, 0=not soloed, 1=soloed, 2=soloed in place, 5=safe soloed, 6=safe soloed in place
/// I_FXEN : int * : fx enabled, 0=bypassed, !0=fx active
/// I_RECARM : int * : record armed, 0=not record armed, 1=record armed
/// I_RECINPUT : int * : record input, <0=no input. if 4096 set, input is MIDI and low 5 bits represent channel (0=all, 1-16=only chan), next 6 bits represent physical input (63=all, 62=VKB). If 4096 is not set, low 10 bits (0..1023) are input start channel (ReaRoute/Loopback start at 512). If 2048 is set, input is multichannel input (using track channel count), or if 1024 is set, input is stereo input, otherwise input is mono.
/// I_RECMODE : int * : record mode, 0=input, 1=stereo out, 2=none, 3=stereo out w/latency compensation, 4=midi output, 5=mono out, 6=mono out w/ latency compensation, 7=midi overdub, 8=midi replace
/// I_RECMON : int * : record monitoring, 0=off, 1=normal, 2=not when playing (tape style)
/// I_RECMONITEMS : int * : monitor items while recording, 0=off, 1=on
/// I_AUTOMODE : int * : track automation mode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch
/// I_NCHAN : int * : number of track channels, 2-64, even numbers only
/// I_SELECTED : int * : track selected, 0=unselected, 1=selected
/// I_WNDH : int * : current TCP window height in pixels including envelopes (read-only)
/// I_TCPH : int * : current TCP window height in pixels not including envelopes (read-only)
/// I_TCPY : int * : current TCP window Y-position in pixels relative to top of arrange view (read-only)
/// I_MCPX : int * : current MCP X-position in pixels relative to mixer container
/// I_MCPY : int * : current MCP Y-position in pixels relative to mixer container
/// I_MCPW : int * : current MCP width in pixels
/// I_MCPH : int * : current MCP height in pixels
/// I_FOLDERDEPTH : int * : folder depth change, 0=normal, 1=track is a folder parent, -1=track is the last in the innermost folder, -2=track is the last in the innermost and next-innermost folders, etc
/// I_FOLDERCOMPACT : int * : folder compacted state (only valid on folders), 0=normal, 1=small, 2=tiny children
/// I_MIDIHWOUT : int * : track midi hardware output index, <0=disabled, low 5 bits are which channels (0=all, 1-16), next 5 bits are output device index (0-31)
/// I_PERFFLAGS : int * : track performance flags, &1=no media buffering, &2=no anticipative FX
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_HEIGHTOVERRIDE : int * : custom height override for TCP window, 0 for none, otherwise size in pixels
/// B_HEIGHTLOCK : bool * : track height lock (must set I_HEIGHTOVERRIDE before locking)
/// D_VOL : double * : trim volume of track, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_PAN : double * : trim pan of track, -1..1
/// D_WIDTH : double * : width of track, -1..1
/// D_DUALPANL : double * : dualpan position 1, -1..1, only if I_PANMODE==6
/// D_DUALPANR : double * : dualpan position 2, -1..1, only if I_PANMODE==6
/// I_PANMODE : int * : pan mode, 0=classic 3.x, 3=new balance, 5=stereo pan, 6=dual pan
/// D_PANLAW : double * : pan law of track, <0=project default, 1=+0dB, etc
/// P_ENV:<envchunkname : TrackEnvelope*, read only. Call with :<VOLENV, :<PANENV, etc appended.
/// B_SHOWINMIXER : bool * : track control panel visible in mixer (do not use on master track)
/// B_SHOWINTCP : bool * : track control panel visible in arrange view (do not use on master track)
/// B_MAINSEND : bool * : track sends audio to parent
/// C_MAINSEND_OFFS : char * : channel offset of track send to parent
/// B_FREEMODE : bool * : track free item positioning enabled (call UpdateTimeline() after changing)
/// C_BEATATTACHMODE : char * : track timebase, -1=project default, 0=time, 1=beats (position, length, rate), 2=beats (position only)
/// F_MCP_FXSEND_SCALE : float * : scale of fx+send area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_FXPARM_SCALE : float * : scale of fx parameter area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_SENDRGN_SCALE : float * : scale of send area as proportion of the fx+send total area (0=minimum allowed, 1=maximum allowed)
/// F_TCP_FXPARM_SCALE : float * : scale of TCP parameter area when TCP FX are embedded (0=min allowed, default, 1=max allowed)
/// I_PLAY_OFFSET_FLAG : int * : track playback offset state, &1=bypassed, &2=offset value is measured in samples (otherwise measured in seconds)
/// D_PLAY_OFFSET : double * : track playback offset, units depend on I_PLAY_OFFSET_FLAG
/// 
pub fn GetSetMediaTrackInfo(tr: *MediaTrack, parmname: [*:0]const u8, setNewValue: *anyopaque) ?*anyopaque {
	return fnPtrs.GetSetMediaTrackInfo(tr, parmname, setNewValue);
}

/// GetSetMediaTrackInfo_String
/// Get or set track string attributes.
/// P_NAME : char * : track name (on master returns NULL)
/// P_ICON : const char * : track icon (full filename, or relative to resource_path/data/track_icons)
/// P_MCP_LAYOUT : const char * : layout name
/// P_TCP_LAYOUT : const char * : layout name
/// P_EXT:xyz : char * : extension-specific persistent data
/// GUID : GUID * : 16-byte GUID, can query or update. If using a _String() function, GUID is a string {xyz-...}.
/// 
pub fn GetSetMediaTrackInfo_String(tr: *MediaTrack, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) bool {
	return fnPtrs.GetSetMediaTrackInfo_String(tr, parmname, stringNeedBig, setNewValue);
}

/// GetSetObjectState
/// get or set the state of a {track,item,envelope} as an RPPXML chunk
/// str="" to get the chunk string returned (must call FreeHeapPtr when done)
/// supply str to set the state (returns zero)
pub fn GetSetObjectState(obj: *anyopaque, str: [*:0]const u8) [*:0]u8 {
	return fnPtrs.GetSetObjectState(obj, str);
}

/// GetSetObjectState2
/// get or set the state of a {track,item,envelope} as an RPPXML chunk
/// str="" to get the chunk string returned (must call FreeHeapPtr when done)
/// supply str to set the state (returns zero)
/// set isundo if the state will be used for undo purposes (which may allow REAPER to get the state more efficiently
pub fn GetSetObjectState2(obj: *anyopaque, str: [*:0]const u8, isundo: bool) [*:0]u8 {
	return fnPtrs.GetSetObjectState2(obj, str, isundo);
}

/// GetSetProjectAuthor
/// gets or sets project author, author_sz is ignored when setting
pub fn GetSetProjectAuthor(proj: *ReaProject, set: bool, author: [*:0]u8, author_sz: c_int) void  {
	return fnPtrs.GetSetProjectAuthor(proj, set, author, author_sz);
}

/// GetSetProjectGrid
/// Get or set the arrange view grid division. 0.25=quarter note, 1.0/3.0=half note triplet, etc. swingmode can be 1 for swing enabled, swingamt is -1..1. swingmode can be 3 for measure-grid. Returns grid configuration flags
pub fn GetSetProjectGrid(project: *ReaProject, set: bool, divisionInOutOptional: *f64, swingmodeInOutOptional: *c_int, swingamtInOutOptional: *f64) c_int {
	return fnPtrs.GetSetProjectGrid(project, set, divisionInOutOptional, swingmodeInOutOptional, swingamtInOutOptional);
}

/// GetSetProjectInfo
/// Get or set project information.
/// RENDER_SETTINGS : &(1|2)=0:master mix, &1=stems+master mix, &2=stems only, &4=multichannel tracks to multichannel files, &8=use render matrix, &16=tracks with only mono media to mono files, &32=selected media items, &64=selected media items via master, &128=selected tracks via master, &256=embed transients if format supports, &512=embed metadata if format supports, &1024=embed take markers if format supports, &2048=2nd pass render
/// RENDER_BOUNDSFLAG : 0=custom time bounds, 1=entire project, 2=time selection, 3=all project regions, 4=selected media items, 5=selected project regions
/// RENDER_CHANNELS : number of channels in rendered file
/// RENDER_SRATE : sample rate of rendered file (or 0 for project sample rate)
/// RENDER_STARTPOS : render start time when RENDER_BOUNDSFLAG=0
/// RENDER_ENDPOS : render end time when RENDER_BOUNDSFLAG=0
/// RENDER_TAILFLAG : apply render tail setting when rendering: &1=custom time bounds, &2=entire project, &4=time selection, &8=all project regions, &16=selected media items, &32=selected project regions
/// RENDER_TAILMS : tail length in ms to render (only used if RENDER_BOUNDSFLAG and RENDER_TAILFLAG are set)
/// RENDER_ADDTOPROJ : &1=add rendered files to project, &2=do not render files that are likely silent
/// RENDER_DITHER : &1=dither, &2=noise shaping, &4=dither stems, &8=noise shaping on stems
/// PROJECT_SRATE : samplerate (ignored unless PROJECT_SRATE_USE set)
/// PROJECT_SRATE_USE : set to 1 if project samplerate is used
/// 
pub fn GetSetProjectInfo(project: *ReaProject, desc: [*:0]const u8, value: f64, is_set: bool) f64 {
	return fnPtrs.GetSetProjectInfo(project, desc, value, is_set);
}

/// GetSetProjectInfo_String
/// Get or set project information.
/// MARKER_GUID:X : get the GUID (unique ID) of the marker or region with index X, where X is the index passed to EnumProjectMarkers, not necessarily the displayed number
/// RECORD_PATH : recording directory -- may be blank or a relative path, to get the effective path see GetProjectPathEx()
/// RENDER_FILE : render directory
/// RENDER_PATTERN : render file name (may contain wildcards)
/// RENDER_METADATA : get or set the metadata saved with the project (not metadata embedded in project media). Example, ID3 album name metadata: "ID3:TALB" to get, "ID3:TALB|my album name" to set.
/// RENDER_TARGETS : semicolon separated list of files that would be written if the project is rendered using the most recent render settings
/// RENDER_FORMAT : base64-encoded sink configuration (see project files, etc). Callers can also pass a simple 4-byte string (non-base64-encoded), e.g. "evaw" or "l3pm", to use default settings for that sink type.
/// RENDER_FORMAT2 : base64-encoded secondary sink configuration. Callers can also pass a simple 4-byte string (non-base64-encoded), e.g. "evaw" or "l3pm", to use default settings for that sink type, or "" to disable secondary render.
/// 
pub fn GetSetProjectInfo_String(project: *ReaProject, desc: [*:0]const u8, valuestrNeedBig: [*:0]u8, is_set: bool) bool {
	return fnPtrs.GetSetProjectInfo_String(project, desc, valuestrNeedBig, is_set);
}

/// GetSetProjectNotes
/// gets or sets project notes, notesNeedBig_sz is ignored when setting
pub fn GetSetProjectNotes(proj: *ReaProject, set: bool, notesNeedBig: [*:0]u8, notesNeedBig_sz: c_int) void  {
	return fnPtrs.GetSetProjectNotes(proj, set, notesNeedBig, notesNeedBig_sz);
}

/// GetSetRepeat
/// -1 == query,0=clear,1=set,>1=toggle . returns new value
pub fn GetSetRepeat(val: c_int) c_int {
	return fnPtrs.GetSetRepeat(val);
}

/// GetSetRepeatEx
/// -1 == query,0=clear,1=set,>1=toggle . returns new value
pub fn GetSetRepeatEx(proj: *ReaProject, val: c_int) c_int {
	return fnPtrs.GetSetRepeatEx(proj, val);
}

/// GetSetTrackGroupMembership
/// Gets or modifies the group membership for a track. Returns group state prior to call (each bit represents one of the 32 group numbers). if setmask has bits set, those bits in setvalue will be applied to group. Group can be one of:
/// VOLUME_LEAD
/// VOLUME_FOLLOW
/// VOLUME_VCA_LEAD
/// VOLUME_VCA_FOLLOW
/// PAN_LEAD
/// PAN_FOLLOW
/// WIDTH_LEAD
/// WIDTH_FOLLOW
/// MUTE_LEAD
/// MUTE_FOLLOW
/// SOLO_LEAD
/// SOLO_FOLLOW
/// RECARM_LEAD
/// RECARM_FOLLOW
/// POLARITY_LEAD
/// POLARITY_FOLLOW
/// AUTOMODE_LEAD
/// AUTOMODE_FOLLOW
/// VOLUME_REVERSE
/// PAN_REVERSE
/// WIDTH_REVERSE
/// NO_LEAD_WHEN_FOLLOW
/// VOLUME_VCA_FOLLOW_ISPREFX
/// 
/// Note: REAPER v6.11 and earlier used _MASTER and _SLAVE rather than _LEAD and _FOLLOW, which is deprecated but still supported (scripts that must support v6.11 and earlier can use the deprecated strings).
/// 
pub fn GetSetTrackGroupMembership(tr: *MediaTrack, groupname: [*:0]const u8, setmask: c_uint, setvalue: c_uint) c_uint {
	return fnPtrs.GetSetTrackGroupMembership(tr, groupname, setmask, setvalue);
}

/// GetSetTrackGroupMembershipHigh
/// Gets or modifies the group membership for a track. Returns group state prior to call (each bit represents one of the high 32 group numbers). if setmask has bits set, those bits in setvalue will be applied to group. Group can be one of:
/// VOLUME_LEAD
/// VOLUME_FOLLOW
/// VOLUME_VCA_LEAD
/// VOLUME_VCA_FOLLOW
/// PAN_LEAD
/// PAN_FOLLOW
/// WIDTH_LEAD
/// WIDTH_FOLLOW
/// MUTE_LEAD
/// MUTE_FOLLOW
/// SOLO_LEAD
/// SOLO_FOLLOW
/// RECARM_LEAD
/// RECARM_FOLLOW
/// POLARITY_LEAD
/// POLARITY_FOLLOW
/// AUTOMODE_LEAD
/// AUTOMODE_FOLLOW
/// VOLUME_REVERSE
/// PAN_REVERSE
/// WIDTH_REVERSE
/// NO_LEAD_WHEN_FOLLOW
/// VOLUME_VCA_FOLLOW_ISPREFX
/// 
/// Note: REAPER v6.11 and earlier used _MASTER and _SLAVE rather than _LEAD and _FOLLOW, which is deprecated but still supported (scripts that must support v6.11 and earlier can use the deprecated strings).
/// 
pub fn GetSetTrackGroupMembershipHigh(tr: *MediaTrack, groupname: [*:0]const u8, setmask: c_uint, setvalue: c_uint) c_uint {
	return fnPtrs.GetSetTrackGroupMembershipHigh(tr, groupname, setmask, setvalue);
}

/// GetSetTrackMIDISupportFile
/// Get or set the filename for storage of various track MIDI characteristics. 0=MIDI colormap image file, 1 or 2=MIDI bank/program select file (2=set new default). If fn != NULL, a new track MIDI storage file will be set; otherwise the existing track MIDI storage file will be returned. 
pub fn GetSetTrackMIDISupportFile(proj: *ReaProject, track: *MediaTrack, which: c_int, filename: [*:0]const u8) [*:0]const u8 {
	return fnPtrs.GetSetTrackMIDISupportFile(proj, track, which, filename);
}

/// GetSetTrackSendInfo
/// Get or set send/receive/hardware output attributes.
/// category is <0 for receives, 0=sends, >0 for hardware outputs
///  sendidx is 0..n (to enumerate, iterate over sendidx until it returns NULL)
/// parameter names:
/// P_DESTTRACK : read only, returns MediaTrack *, destination track, only applies for sends/recvs
/// P_SRCTRACK : read only, returns MediaTrack *, source track, only applies for sends/recvs
/// P_ENV:<envchunkname : read only, returns TrackEnvelope *. Call with :<VOLENV, :<PANENV, etc appended.
/// P_EXT:xyz : char * : extension-specific persistent data
/// B_MUTE : bool *
/// B_PHASE : bool *, true to flip phase
/// B_MONO : bool *
/// D_VOL : double *, 1.0 = +0dB etc
/// D_PAN : double *, -1..+1
/// D_PANLAW : double *,1.0=+0.0db, 0.5=-6dB, -1.0 = projdef etc
/// I_SENDMODE : int *, 0=post-fader, 1=pre-fx, 2=post-fx (deprecated), 3=post-fx
/// I_AUTOMODE : int * : automation mode (-1=use track automode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch)
/// I_SRCCHAN : int *, index,&1024=mono, -1 for none
/// I_DSTCHAN : int *, index, &1024=mono, otherwise stereo pair, hwout:&512=rearoute
/// I_MIDIFLAGS : int *, low 5 bits=source channel 0=all, 1-16, next 5 bits=dest channel, 0=orig, 1-16=chanSee CreateTrackSend, RemoveTrackSend.
pub fn GetSetTrackSendInfo(tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, setNewValue: *anyopaque) ?*anyopaque {
	return fnPtrs.GetSetTrackSendInfo(tr, category, sendidx, parmname, setNewValue);
}

/// GetSetTrackSendInfo_String
/// Gets/sets a send attribute string:
/// P_EXT:xyz : char * : extension-specific persistent data
/// 
pub fn GetSetTrackSendInfo_String(tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, stringNeedBig: [*:0]u8, setNewValue: bool) bool {
	return fnPtrs.GetSetTrackSendInfo_String(tr, category, sendidx, parmname, stringNeedBig, setNewValue);
}

/// GetSetTrackState
/// deprecated -- see SetTrackStateChunk, GetTrackStateChunk
pub fn GetSetTrackState(track: *MediaTrack, str: [*:0]u8, str_sz: c_int) bool {
	return fnPtrs.GetSetTrackState(track, str, str_sz);
}

/// GetSetTrackState2
/// deprecated -- see SetTrackStateChunk, GetTrackStateChunk
pub fn GetSetTrackState2(track: *MediaTrack, str: [*:0]u8, str_sz: c_int, isundo: bool) bool {
	return fnPtrs.GetSetTrackState2(track, str, str_sz, isundo);
}

/// GetSubProjectFromSource
pub fn GetSubProjectFromSource(src: *PCM_source) ?*anyopaque {
	return fnPtrs.GetSubProjectFromSource(src);
}

/// GetTake
/// get a take from an item by take count (zero-based)
pub fn GetTake(item: *MediaItem, takeidx: c_int) ?*anyopaque {
	return fnPtrs.GetTake(item, takeidx);
}

/// GetTakeEnvelope
pub fn GetTakeEnvelope(take: *MediaItem_Take, envidx: c_int) ?*anyopaque {
	return fnPtrs.GetTakeEnvelope(take, envidx);
}

/// GetTakeEnvelopeByName
pub fn GetTakeEnvelopeByName(take: *MediaItem_Take, envname: [*:0]const u8) ?*anyopaque {
	return fnPtrs.GetTakeEnvelopeByName(take, envname);
}

/// GetTakeMarker
/// Get information about a take marker. Returns the position in media item source time, or -1 if the take marker does not exist. See GetNumTakeMarkers, SetTakeMarker, DeleteTakeMarker
pub fn GetTakeMarker(take: *MediaItem_Take, idx: c_int, nameOut: [*:0]u8, nameOut_sz: c_int, colorOutOptional: *c_int) f64 {
	return fnPtrs.GetTakeMarker(take, idx, nameOut, nameOut_sz, colorOutOptional);
}

/// GetTakeName
/// returns NULL if the take is not valid
pub fn GetTakeName(take: *MediaItem_Take) [*:0]const u8 {
	return fnPtrs.GetTakeName(take);
}

/// GetTakeNumStretchMarkers
/// Returns number of stretch markers in take
pub fn GetTakeNumStretchMarkers(take: *MediaItem_Take) c_int {
	return fnPtrs.GetTakeNumStretchMarkers(take);
}

/// GetTakeStretchMarker
/// Gets information on a stretch marker, idx is 0..n. Returns false if stretch marker not valid. posOut will be set to position in item, srcposOutOptional will be set to source media position. Returns index. if input index is -1, next marker is found using position (or source position if position is -1). If position/source position are used to find marker position, their values are not updated.
pub fn GetTakeStretchMarker(take: *MediaItem_Take, idx: c_int, posOut: *f64, srcposOutOptional: *f64) c_int {
	return fnPtrs.GetTakeStretchMarker(take, idx, posOut, srcposOutOptional);
}

/// GetTakeStretchMarkerSlope
/// See SetTakeStretchMarkerSlope
pub fn GetTakeStretchMarkerSlope(take: *MediaItem_Take, idx: c_int) f64 {
	return fnPtrs.GetTakeStretchMarkerSlope(take, idx);
}

/// GetTCPFXParm
/// Get information about a specific FX parameter knob (see CountTCPFXParms).
pub fn GetTCPFXParm(project: *ReaProject, track: *MediaTrack, index: c_int, fxindexOut: *c_int, parmidxOut: *c_int) bool {
	return fnPtrs.GetTCPFXParm(project, track, index, fxindexOut, parmidxOut);
}

/// GetTempoMatchPlayRate
/// finds the playrate and target length to insert this item stretched to a round power-of-2 number of bars, between 1/8 and 256
pub fn GetTempoMatchPlayRate(source: *PCM_source, srcscale: f64, position: f64, mult: f64, rateOut: *f64, targetlenOut: *f64) bool {
	return fnPtrs.GetTempoMatchPlayRate(source, srcscale, position, mult, rateOut, targetlenOut);
}

/// GetTempoTimeSigMarker
/// Get information about a tempo/time signature marker. See CountTempoTimeSigMarkers, SetTempoTimeSigMarker, AddTempoTimeSigMarker.
pub fn GetTempoTimeSigMarker(proj: *ReaProject, ptidx: c_int, timeposOut: *f64, measureposOut: *c_int, beatposOut: *f64, bpmOut: *f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, lineartempoOut: *bool) bool {
	return fnPtrs.GetTempoTimeSigMarker(proj, ptidx, timeposOut, measureposOut, beatposOut, bpmOut, timesig_numOut, timesig_denomOut, lineartempoOut);
}

/// GetThemeColor
/// Returns the theme color specified, or -1 on failure. If the low bit of flags is set, the color as originally specified by the theme (before any transformations) is returned, otherwise the current (possibly transformed and modified) color is returned. See SetThemeColor for a list of valid ini_key.
pub fn GetThemeColor(ini_key: [*:0]const u8, flagsOptional: c_int) c_int {
	return fnPtrs.GetThemeColor(ini_key, flagsOptional);
}

/// GetToggleCommandState
/// See GetToggleCommandStateEx.
pub fn GetToggleCommandState(command_id: c_int) c_int {
	return fnPtrs.GetToggleCommandState(command_id);
}

/// GetToggleCommandState2
/// See GetToggleCommandStateEx.
pub fn GetToggleCommandState2(section: *KbdSectionInfo, command_id: c_int) c_int {
	return fnPtrs.GetToggleCommandState2(section, command_id);
}

/// GetToggleCommandStateEx
/// For the main action context, the MIDI editor, or the media explorer, returns the toggle state of the action. 0=off, 1=on, -1=NA because the action does not have on/off states. For the MIDI editor, the action state for the most recently focused window will be returned.
pub fn GetToggleCommandStateEx(section_id: c_int, command_id: c_int) c_int {
	return fnPtrs.GetToggleCommandStateEx(section_id, command_id);
}

/// GetToggleCommandStateThroughHooks
/// Returns the state of an action via extension plugins' hooks.
pub fn GetToggleCommandStateThroughHooks(section: *KbdSectionInfo, command_id: c_int) c_int {
	return fnPtrs.GetToggleCommandStateThroughHooks(section, command_id);
}

/// GetTooltipWindow
/// gets a tooltip window,in case you want to ask it for font information. Can return NULL.
pub fn GetTooltipWindow() HWND  {
	return fnPtrs.GetTooltipWindow();
}

/// GetTrack
/// get a track from a project by track count (zero-based) (proj=0 for active project)
pub fn GetTrack(proj: *ReaProject, trackidx: c_int) ?*anyopaque {
	return fnPtrs.GetTrack(proj, trackidx);
}

/// GetTrackAutomationMode
/// return the track mode, regardless of global override
pub fn GetTrackAutomationMode(tr: *MediaTrack) c_int {
	return fnPtrs.GetTrackAutomationMode(tr);
}

/// GetTrackColor
/// Returns the track custom color as OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). Black is returned as 0x01000000, no color setting is returned as 0.
pub fn GetTrackColor(track: *MediaTrack) c_int {
	return fnPtrs.GetTrackColor(track);
}

/// GetTrackDepth
pub fn GetTrackDepth(track: *MediaTrack) c_int {
	return fnPtrs.GetTrackDepth(track);
}

/// GetTrackEnvelope
pub fn GetTrackEnvelope(track: *MediaTrack, envidx: c_int) ?*anyopaque {
	return fnPtrs.GetTrackEnvelope(track, envidx);
}

/// GetTrackEnvelopeByChunkName
/// Gets a built-in track envelope by configuration chunk name, e.g. "<VOLENV".
/// 
pub fn GetTrackEnvelopeByChunkName(tr: *MediaTrack, cfgchunkname: [*:0]const u8) ?*anyopaque {
	return fnPtrs.GetTrackEnvelopeByChunkName(tr, cfgchunkname);
}

/// GetTrackEnvelopeByName
pub fn GetTrackEnvelopeByName(track: *MediaTrack, envname: [*:0]const u8) ?*anyopaque {
	return fnPtrs.GetTrackEnvelopeByName(track, envname);
}

/// GetTrackFromPoint
/// Returns the track from the screen coordinates specified. If the screen coordinates refer to a window associated to the track (such as FX), the track will be returned. infoOutOptional will be set to 1 if it is likely an envelope, 2 if it is likely a track FX.
pub fn GetTrackFromPoint(screen_x: c_int, screen_y: c_int, infoOutOptional: *c_int) ?*anyopaque {
	return fnPtrs.GetTrackFromPoint(screen_x, screen_y, infoOutOptional);
}

/// GetTrackGUID
pub fn GetTrackGUID(tr: *MediaTrack) ?*anyopaque {
	return fnPtrs.GetTrackGUID(tr);
}

/// GetTrackInfo
/// gets track info (returns name).
/// track index, -1=master, 0..n, or cast a MediaTrack* to int
/// if flags is non-NULL, will be set to:
/// &1=folder
/// &2=selected
/// &4=has fx enabled
/// &8=muted
/// &16=soloed
/// &32=SIP'd (with &16)
/// &64=rec armed
/// &128=rec monitoring on
/// &256=rec monitoring auto
/// &512=hide from TCP
/// &1024=hide from MCP
pub fn GetTrackInfo(track: INT_PTR, flags: *c_int) [*:0]const u8 {
	return fnPtrs.GetTrackInfo(track, flags);
}

/// GetTrackMediaItem
pub fn GetTrackMediaItem(tr: *MediaTrack, itemidx: c_int) ?*anyopaque {
	return fnPtrs.GetTrackMediaItem(tr, itemidx);
}

/// GetTrackMIDILyrics
/// Get all MIDI lyrics on the track. Lyrics will be returned as one string with tabs between each word. flag&1: double tabs at the end of each measure and triple tabs when skipping measures, flag&2: each lyric is preceded by its beat position in the project (example with flag=2: "1.1.2\tLyric for measure 1 beat 2\t.1.1\tLyric for measure 2 beat 1	"). See SetTrackMIDILyrics
pub fn GetTrackMIDILyrics(track: *MediaTrack, flag: c_int, bufWantNeedBig: [*:0]u8, bufWantNeedBig_sz: *c_int) bool {
	return fnPtrs.GetTrackMIDILyrics(track, flag, bufWantNeedBig, bufWantNeedBig_sz);
}

/// GetTrackMIDINoteName
/// see GetTrackMIDINoteNameEx
pub fn GetTrackMIDINoteName(track: c_int, pitch: c_int, chan: c_int) [*:0]const u8 {
	return fnPtrs.GetTrackMIDINoteName(track, pitch, chan);
}

/// GetTrackMIDINoteNameEx
/// Get note/CC name. pitch 128 for CC0 name, 129 for CC1 name, etc. See SetTrackMIDINoteNameEx
pub fn GetTrackMIDINoteNameEx(proj: *ReaProject, track: *MediaTrack, pitch: c_int, chan: c_int) [*:0]const u8 {
	return fnPtrs.GetTrackMIDINoteNameEx(proj, track, pitch, chan);
}

/// GetTrackMIDINoteRange
pub fn GetTrackMIDINoteRange(proj: *ReaProject, track: *MediaTrack, note_loOut: *c_int, note_hiOut: *c_int) void  {
	return fnPtrs.GetTrackMIDINoteRange(proj, track, note_loOut, note_hiOut);
}

/// GetTrackName
/// Returns "MASTER" for master track, "Track N" if track has no name.
pub fn GetTrackName(track: *MediaTrack, bufOut: [*:0]u8, bufOut_sz: c_int) bool {
	return fnPtrs.GetTrackName(track, bufOut, bufOut_sz);
}

/// GetTrackNumMediaItems
pub fn GetTrackNumMediaItems(tr: *MediaTrack) c_int {
	return fnPtrs.GetTrackNumMediaItems(tr);
}

/// GetTrackNumSends
/// returns number of sends/receives/hardware outputs - category is <0 for receives, 0=sends, >0 for hardware outputs
pub fn GetTrackNumSends(tr: *MediaTrack, category: c_int) c_int {
	return fnPtrs.GetTrackNumSends(tr, category);
}

/// GetTrackReceiveName
/// See GetTrackSendName.
pub fn GetTrackReceiveName(track: *MediaTrack, recv_index: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.GetTrackReceiveName(track, recv_index, buf, buf_sz);
}

/// GetTrackReceiveUIMute
/// See GetTrackSendUIMute.
pub fn GetTrackReceiveUIMute(track: *MediaTrack, recv_index: c_int, muteOut: *bool) bool {
	return fnPtrs.GetTrackReceiveUIMute(track, recv_index, muteOut);
}

/// GetTrackReceiveUIVolPan
/// See GetTrackSendUIVolPan.
pub fn GetTrackReceiveUIVolPan(track: *MediaTrack, recv_index: c_int, volumeOut: *f64, panOut: *f64) bool {
	return fnPtrs.GetTrackReceiveUIVolPan(track, recv_index, volumeOut, panOut);
}

/// GetTrackSendInfo_Value
/// Get send/receive/hardware output numerical-value attributes.
/// category is <0 for receives, 0=sends, >0 for hardware outputs
/// parameter names:
/// B_MUTE : bool *
/// B_PHASE : bool *, true to flip phase
/// B_MONO : bool *
/// D_VOL : double *, 1.0 = +0dB etc
/// D_PAN : double *, -1..+1
/// D_PANLAW : double *,1.0=+0.0db, 0.5=-6dB, -1.0 = projdef etc
/// I_SENDMODE : int *, 0=post-fader, 1=pre-fx, 2=post-fx (deprecated), 3=post-fx
/// I_AUTOMODE : int * : automation mode (-1=use track automode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch)
/// I_SRCCHAN : int *, index,&1024=mono, -1 for none
/// I_DSTCHAN : int *, index, &1024=mono, otherwise stereo pair, hwout:&512=rearoute
/// I_MIDIFLAGS : int *, low 5 bits=source channel 0=all, 1-16, next 5 bits=dest channel, 0=orig, 1-16=chanP_DESTTRACK : read only, returns MediaTrack *, destination track, only applies for sends/recvs
/// P_SRCTRACK : read only, returns MediaTrack *, source track, only applies for sends/recvs
/// P_ENV:<envchunkname : read only, returns TrackEnvelope *. Call with :<VOLENV, :<PANENV, etc appended.
/// See CreateTrackSend, RemoveTrackSend, GetTrackNumSends.
pub fn GetTrackSendInfo_Value(tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8) f64 {
	return fnPtrs.GetTrackSendInfo_Value(tr, category, sendidx, parmname);
}

/// GetTrackSendName
/// send_idx>=0 for hw ouputs, >=nb_of_hw_ouputs for sends. See GetTrackReceiveName.
pub fn GetTrackSendName(track: *MediaTrack, send_index: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.GetTrackSendName(track, send_index, buf, buf_sz);
}

/// GetTrackSendUIMute
/// send_idx>=0 for hw ouputs, >=nb_of_hw_ouputs for sends. See GetTrackReceiveUIMute.
pub fn GetTrackSendUIMute(track: *MediaTrack, send_index: c_int, muteOut: *bool) bool {
	return fnPtrs.GetTrackSendUIMute(track, send_index, muteOut);
}

/// GetTrackSendUIVolPan
/// send_idx>=0 for hw ouputs, >=nb_of_hw_ouputs for sends. See GetTrackReceiveUIVolPan.
pub fn GetTrackSendUIVolPan(track: *MediaTrack, send_index: c_int, volumeOut: *f64, panOut: *f64) bool {
	return fnPtrs.GetTrackSendUIVolPan(track, send_index, volumeOut, panOut);
}

/// GetTrackState
/// Gets track state, returns track name.
/// flags will be set to:
/// &1=folder
/// &2=selected
/// &4=has fx enabled
/// &8=muted
/// &16=soloed
/// &32=SIP'd (with &16)
/// &64=rec armed
/// &128=rec monitoring on
/// &256=rec monitoring auto
/// &512=hide from TCP
/// &1024=hide from MCP
pub fn GetTrackState(track: *MediaTrack, flagsOut: *c_int) [*:0]const u8 {
	return fnPtrs.GetTrackState(track, flagsOut);
}

/// GetTrackStateChunk
/// Gets the RPPXML state of a track, returns true if successful. Undo flag is a performance/caching hint.
pub fn GetTrackStateChunk(track: *MediaTrack, strNeedBig: [*:0]u8, strNeedBig_sz: c_int, isundoOptional: bool) bool {
	return fnPtrs.GetTrackStateChunk(track, strNeedBig, strNeedBig_sz, isundoOptional);
}

/// GetTrackUIMute
pub fn GetTrackUIMute(track: *MediaTrack, muteOut: *bool) bool {
	return fnPtrs.GetTrackUIMute(track, muteOut);
}

/// GetTrackUIPan
pub fn GetTrackUIPan(track: *MediaTrack, pan1Out: *f64, pan2Out: *f64, panmodeOut: *c_int) bool {
	return fnPtrs.GetTrackUIPan(track, pan1Out, pan2Out, panmodeOut);
}

/// GetTrackUIVolPan
pub fn GetTrackUIVolPan(track: *MediaTrack, volumeOut: *f64, panOut: *f64) bool {
	return fnPtrs.GetTrackUIVolPan(track, volumeOut, panOut);
}

/// GetUnderrunTime
/// retrieves the last timestamps of audio xrun (yellow-flash, if available), media xrun (red-flash), and the current time stamp (all milliseconds)
pub fn GetUnderrunTime(audio_xrunOutOptional: *c_uint, media_xrunOutOptional: *c_uint, curtimeOutOptional: *c_uint) void  {
	return fnPtrs.GetUnderrunTime(audio_xrunOutOptional, media_xrunOutOptional, curtimeOutOptional);
}

/// GetUserFileNameForRead
/// returns true if the user selected a valid file, false if the user canceled the dialog
pub fn GetUserFileNameForRead(filenameNeed4096: [*:0]u8, title: [*:0]const u8, defext: [*:0]const u8) bool {
	return fnPtrs.GetUserFileNameForRead(filenameNeed4096, title, defext);
}

/// GetUserInputs
/// Get values from the user.
/// If a caption begins with *, for example "*password", the edit field will not display the input text.
/// Maximum fields is 16. Values are returned as a comma-separated string. Returns false if the user canceled the dialog. You can supply special extra information via additional caption fields: extrawidth=XXX to increase text field width, separator=X to use a different separator for returned fields.
pub fn GetUserInputs(title: [*:0]const u8, num_inputs: c_int, captions_csv: [*:0]const u8, retvals_csv: [*:0]u8, retvals_csv_sz: c_int) bool {
	return fnPtrs.GetUserInputs(title, num_inputs, captions_csv, retvals_csv, retvals_csv_sz);
}

/// GoToMarker
/// Go to marker. If use_timeline_order==true, marker_index 1 refers to the first marker on the timeline.  If use_timeline_order==false, marker_index 1 refers to the first marker with the user-editable index of 1.
pub fn GoToMarker(proj: *ReaProject, marker_index: c_int, use_timeline_order: bool) void  {
	return fnPtrs.GoToMarker(proj, marker_index, use_timeline_order);
}

/// GoToRegion
/// Seek to region after current region finishes playing (smooth seek). If use_timeline_order==true, region_index 1 refers to the first region on the timeline.  If use_timeline_order==false, region_index 1 refers to the first region with the user-editable index of 1.
pub fn GoToRegion(proj: *ReaProject, region_index: c_int, use_timeline_order: bool) void  {
	return fnPtrs.GoToRegion(proj, region_index, use_timeline_order);
}

/// GR_SelectColor
/// Runs the system color chooser dialog.  Returns 0 if the user cancels the dialog.
pub fn GR_SelectColor(hwnd: HWND, colorOut: *c_int) c_int {
	return fnPtrs.GR_SelectColor(hwnd, colorOut);
}

/// GSC_mainwnd
/// this is just like win32 GetSysColor() but can have overrides.
pub fn GSC_mainwnd(t: c_int) c_int {
	return fnPtrs.GSC_mainwnd(t);
}

/// guidToString
/// dest should be at least 64 chars long to be safe
pub fn guidToString(g: *const GUID, destNeed64: [*:0]u8) void  {
	return fnPtrs.guidToString(g, destNeed64);
}

/// HasExtState
/// Returns true if there exists an extended state value for a specific section and key. See SetExtState, GetExtState, DeleteExtState.
pub fn HasExtState(section: [*:0]const u8, key: [*:0]const u8) bool {
	return fnPtrs.HasExtState(section, key);
}

/// HasTrackMIDIPrograms
/// returns name of track plugin that is supplying MIDI programs,or NULL if there is none
pub fn HasTrackMIDIPrograms(track: c_int) [*:0]const u8 {
	return fnPtrs.HasTrackMIDIPrograms(track);
}

/// HasTrackMIDIProgramsEx
/// returns name of track plugin that is supplying MIDI programs,or NULL if there is none
pub fn HasTrackMIDIProgramsEx(proj: *ReaProject, track: *MediaTrack) [*:0]const u8 {
	return fnPtrs.HasTrackMIDIProgramsEx(proj, track);
}

/// Help_Set
pub fn Help_Set(helpstring: [*:0]const u8, is_temporary_help: bool) void  {
	return fnPtrs.Help_Set(helpstring, is_temporary_help);
}

/// HiresPeaksFromSource
pub fn HiresPeaksFromSource(src: *PCM_source, block: *PCM_source_peaktransfer_t) void  {
	return fnPtrs.HiresPeaksFromSource(src, block);
}

/// image_resolve_fn
pub fn image_resolve_fn(in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) void  {
	return fnPtrs.image_resolve_fn(in, out, out_sz);
}

/// InsertAutomationItem
/// Insert a new automation item. pool_id < 0 collects existing envelope points into the automation item; if pool_id is >= 0 the automation item will be a new instance of that pool (which will be created as an empty instance if it does not exist). Returns the index of the item, suitable for passing to other automation item API functions. See GetSetAutomationItemInfo.
pub fn InsertAutomationItem(env: *TrackEnvelope, pool_id: c_int, position: f64, length: f64) c_int {
	return fnPtrs.InsertAutomationItem(env, pool_id, position, length);
}

/// InsertEnvelopePoint
/// Insert an envelope point. If setting multiple points at once, set noSort=true, and call Envelope_SortPoints when done. See InsertEnvelopePointEx.
pub fn InsertEnvelopePoint(envelope: *TrackEnvelope, time: f64, value: f64, shape: c_int, tension: f64, selected: bool, noSortInOptional: *bool) bool {
	return fnPtrs.InsertEnvelopePoint(envelope, time, value, shape, tension, selected, noSortInOptional);
}

/// InsertEnvelopePointEx
/// Insert an envelope point. If setting multiple points at once, set noSort=true, and call Envelope_SortPoints when done.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See CountEnvelopePointsEx, GetEnvelopePointEx, SetEnvelopePointEx, DeleteEnvelopePointEx.
pub fn InsertEnvelopePointEx(envelope: *TrackEnvelope, autoitem_idx: c_int, time: f64, value: f64, shape: c_int, tension: f64, selected: bool, noSortInOptional: *bool) bool {
	return fnPtrs.InsertEnvelopePointEx(envelope, autoitem_idx, time, value, shape, tension, selected, noSortInOptional);
}

/// InsertMedia
/// mode: 0=add to current track, 1=add new track, 3=add to selected items as takes, &4=stretch/loop to fit time sel, &8=try to match tempo 1x, &16=try to match tempo 0.5x, &32=try to match tempo 2x, &64=don't preserve pitch when matching tempo, &128=no loop/section if startpct/endpct set, &256=force loop regardless of global preference for looping imported items, &512=use high word as absolute track index if mode&3==0, &1024=insert into reasamplomatic on a new track, &2048=insert into open reasamplomatic instance, &4096=move to source preferred position (BWF start offset), &8192=reverse
pub fn InsertMedia(file: [*:0]const u8, mode: c_int) c_int {
	return fnPtrs.InsertMedia(file, mode);
}

/// InsertMediaSection
/// See InsertMedia.
pub fn InsertMediaSection(file: [*:0]const u8, mode: c_int, startpct: f64, endpct: f64, pitchshift: f64) c_int {
	return fnPtrs.InsertMediaSection(file, mode, startpct, endpct, pitchshift);
}

/// InsertTrackAtIndex
/// inserts a track at idx,of course this will be clamped to 0..GetNumTracks(). wantDefaults=TRUE for default envelopes/FX,otherwise no enabled fx/env
pub fn InsertTrackAtIndex(idx: c_int, wantDefaults: bool) void  {
	return fnPtrs.InsertTrackAtIndex(idx, wantDefaults);
}

/// IsInRealTimeAudio
/// are we in a realtime audio thread (between OnAudioBuffer calls,not in some worker/anticipative FX thread)? threadsafe
pub fn IsInRealTimeAudio() c_int {
	return fnPtrs.IsInRealTimeAudio();
}

/// IsItemTakeActiveForPlayback
/// get whether a take will be played (active take, unmuted, etc)
pub fn IsItemTakeActiveForPlayback(item: *MediaItem, take: *MediaItem_Take) bool {
	return fnPtrs.IsItemTakeActiveForPlayback(item, take);
}

/// IsMediaExtension
/// Tests a file extension (i.e. "wav" or "mid") to see if it's a media extension.
/// If wantOthers is set, then "RPP", "TXT" and other project-type formats will also pass.
pub fn IsMediaExtension(ext: [*:0]const u8, wantOthers: bool) bool {
	return fnPtrs.IsMediaExtension(ext, wantOthers);
}

/// IsMediaItemSelected
pub fn IsMediaItemSelected(item: *MediaItem) bool {
	return fnPtrs.IsMediaItemSelected(item);
}

/// IsProjectDirty
/// Is the project dirty (needing save)? Always returns 0 if 'undo/prompt to save' is disabled in preferences.
pub fn IsProjectDirty(proj: *ReaProject) c_int {
	return fnPtrs.IsProjectDirty(proj);
}

/// IsREAPER
/// Returns true if dealing with REAPER, returns false for ReaMote, etc
pub fn IsREAPER() bool {
	return fnPtrs.IsREAPER();
}

/// IsTrackSelected
pub fn IsTrackSelected(track: *MediaTrack) bool {
	return fnPtrs.IsTrackSelected(track);
}

/// IsTrackVisible
/// If mixer==true, returns true if the track is visible in the mixer.  If mixer==false, returns true if the track is visible in the track control panel.
pub fn IsTrackVisible(track: *MediaTrack, mixer: bool) bool {
	return fnPtrs.IsTrackVisible(track, mixer);
}

/// joystick_create
/// creates a joystick device
pub fn joystick_create(guid: *const GUID) ?*anyopaque {
	return fnPtrs.joystick_create(guid);
}

/// joystick_destroy
/// destroys a joystick device
pub fn joystick_destroy(device: *joystick_device) void  {
	return fnPtrs.joystick_destroy(device);
}

/// joystick_enum
/// enumerates installed devices, returns GUID as a string
pub fn joystick_enum(index: c_int, namestrOutOptional: [*:0]const u8) [*:0]const u8 {
	return fnPtrs.joystick_enum(index, namestrOutOptional);
}

/// joystick_getaxis
/// returns axis value (-1..1)
pub fn joystick_getaxis(dev: *joystick_device, axis: c_int) f64 {
	return fnPtrs.joystick_getaxis(dev, axis);
}

/// joystick_getbuttonmask
/// returns button pressed mask, 1=first button, 2=second...
pub fn joystick_getbuttonmask(dev: *joystick_device) c_uint {
	return fnPtrs.joystick_getbuttonmask(dev);
}

/// joystick_getinfo
/// returns button count
pub fn joystick_getinfo(dev: *joystick_device, axesOutOptional: *c_int, povsOutOptional: *c_int) c_int {
	return fnPtrs.joystick_getinfo(dev, axesOutOptional, povsOutOptional);
}

/// joystick_getpov
/// returns POV value (usually 0..655.35, or 655.35 on error)
pub fn joystick_getpov(dev: *joystick_device, pov: c_int) f64 {
	return fnPtrs.joystick_getpov(dev, pov);
}

/// joystick_update
/// Updates joystick state from hardware, returns true if successful (joystick_get* will not be valid until joystick_update() is called successfully)
pub fn joystick_update(dev: *joystick_device) bool {
	return fnPtrs.joystick_update(dev);
}

/// kbd_enumerateActions
pub fn kbd_enumerateActions(section: *KbdSectionInfo, idx: c_int, nameOut: [*:0]const u8) c_int {
	return fnPtrs.kbd_enumerateActions(section, idx, nameOut);
}

/// kbd_formatKeyName
pub fn kbd_formatKeyName(ac: *ACCEL, s: [*:0]u8) void  {
	return fnPtrs.kbd_formatKeyName(ac, s);
}

/// kbd_getCommandName
/// Get the string of a key assigned to command "cmd" in a section.
/// This function is poorly named as it doesn't return the command's name, see kbd_getTextFromCmd.
pub fn kbd_getCommandName(cmd: c_int, s: [*:0]u8, section: *KbdSectionInfo) void  {
	return fnPtrs.kbd_getCommandName(cmd, s, section);
}

/// kbd_getTextFromCmd
pub fn kbd_getTextFromCmd(cmd: DWORD, section: *KbdSectionInfo) [*:0]const u8 {
	return fnPtrs.kbd_getTextFromCmd(cmd, section);
}

/// KBD_OnMainActionEx
/// val/valhw are used for midi stuff.
/// val=[0..127] and valhw=-1 (midi CC),
/// valhw >=0 (midi pitch (valhw | val<<7)),
/// relmode absolute (0) or 1/2/3 for relative adjust modes
pub fn KBD_OnMainActionEx(cmd: c_int, val: c_int, valhw: c_int, relmode: c_int, hwnd: HWND, proj: *ReaProject) c_int {
	return fnPtrs.KBD_OnMainActionEx(cmd, val, valhw, relmode, hwnd, proj);
}

/// kbd_OnMidiEvent
/// can be called from anywhere (threadsafe)
pub fn kbd_OnMidiEvent(evt: *MIDI_event_t, dev_index: c_int) void  {
	return fnPtrs.kbd_OnMidiEvent(evt, dev_index);
}

/// kbd_OnMidiList
/// can be called from anywhere (threadsafe)
pub fn kbd_OnMidiList(list: *MIDI_eventlist, dev_index: c_int) void  {
	return fnPtrs.kbd_OnMidiList(list, dev_index);
}

/// kbd_ProcessActionsMenu
pub fn kbd_ProcessActionsMenu(menu: HMENU, section: *KbdSectionInfo) void  {
	return fnPtrs.kbd_ProcessActionsMenu(menu, section);
}

/// kbd_processMidiEventActionEx
pub fn kbd_processMidiEventActionEx(evt: *MIDI_event_t, section: *KbdSectionInfo, hwndCtx: HWND) bool {
	return fnPtrs.kbd_processMidiEventActionEx(evt, section, hwndCtx);
}

/// kbd_reprocessMenu
/// Reprocess a menu recursively, setting key assignments to what their command IDs are mapped to.
pub fn kbd_reprocessMenu(menu: HMENU, section: *KbdSectionInfo) void  {
	return fnPtrs.kbd_reprocessMenu(menu, section);
}

/// kbd_RunCommandThroughHooks
/// actioncommandID may get modified
pub fn kbd_RunCommandThroughHooks(section: *KbdSectionInfo, actionCommandID: *c_int, val: *c_int, valhw: *c_int, relmode: *c_int, hwnd: HWND) bool {
	return fnPtrs.kbd_RunCommandThroughHooks(section, actionCommandID, val, valhw, relmode, hwnd);
}

/// kbd_translateAccelerator
/// Pass in the HWND to receive commands, a MSG of a key command,  and a valid section,
/// and kbd_translateAccelerator() will process it looking for any keys bound to it, and send the messages off.
/// Returns 1 if processed, 0 if no key binding found.
pub fn kbd_translateAccelerator(hwnd: HWND, msg: *MSG, section: *KbdSectionInfo) c_int {
	return fnPtrs.kbd_translateAccelerator(hwnd, msg, section);
}

/// kbd_translateMouse
pub fn kbd_translateMouse(winmsg: *anyopaque, midimsg: u8) bool {
	return fnPtrs.kbd_translateMouse(winmsg, midimsg);
}

/// LICE__Destroy
pub fn LICE__Destroy(bm: *LICE_IBitmap) void  {
	return fnPtrs.LICE__Destroy(bm);
}

/// LICE__DestroyFont
pub fn LICE__DestroyFont(font: *LICE_IFont) void  {
	return fnPtrs.LICE__DestroyFont(font);
}

/// LICE__DrawText
pub fn LICE__DrawText(font: *LICE_IFont, bm: *LICE_IBitmap, str: [*:0]const u8, strcnt: c_int, rect: *RECT, dtFlags: UINT) c_int {
	return fnPtrs.LICE__DrawText(font, bm, str, strcnt, rect, dtFlags);
}

/// LICE__GetBits
pub fn LICE__GetBits(bm: *LICE_IBitmap) ?*anyopaque {
	return fnPtrs.LICE__GetBits(bm);
}

/// LICE__GetDC
pub fn LICE__GetDC(bm: *LICE_IBitmap) HDC  {
	return fnPtrs.LICE__GetDC(bm);
}

/// LICE__GetHeight
pub fn LICE__GetHeight(bm: *LICE_IBitmap) c_int {
	return fnPtrs.LICE__GetHeight(bm);
}

/// LICE__GetRowSpan
pub fn LICE__GetRowSpan(bm: *LICE_IBitmap) c_int {
	return fnPtrs.LICE__GetRowSpan(bm);
}

/// LICE__GetWidth
pub fn LICE__GetWidth(bm: *LICE_IBitmap) c_int {
	return fnPtrs.LICE__GetWidth(bm);
}

/// LICE__IsFlipped
pub fn LICE__IsFlipped(bm: *LICE_IBitmap) bool {
	return fnPtrs.LICE__IsFlipped(bm);
}

/// LICE__resize
pub fn LICE__resize(bm: *LICE_IBitmap, w: c_int, h: c_int) bool {
	return fnPtrs.LICE__resize(bm, w, h);
}

/// LICE__SetBkColor
pub fn LICE__SetBkColor(font: *LICE_IFont, color: LICE_pixel) LICE_pixel  {
	return fnPtrs.LICE__SetBkColor(font, color);
}

/// LICE__SetFromHFont
/// font must REMAIN valid,unless LICE_FONT_FLAG_PRECALCALL is set
pub fn LICE__SetFromHFont(font: *LICE_IFont, hfont: HFONT, flags: c_int) void  {
	return fnPtrs.LICE__SetFromHFont(font, hfont, flags);
}

/// LICE__SetTextColor
pub fn LICE__SetTextColor(font: *LICE_IFont, color: LICE_pixel) LICE_pixel  {
	return fnPtrs.LICE__SetTextColor(font, color);
}

/// LICE__SetTextCombineMode
pub fn LICE__SetTextCombineMode(ifont: *LICE_IFont, mode: c_int, alpha: f32) void  {
	return fnPtrs.LICE__SetTextCombineMode(ifont, mode, alpha);
}

/// LICE_Arc
pub fn LICE_Arc(dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, minAngle: f32, maxAngle: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_Arc(dest, cx, cy, r, minAngle, maxAngle, color, alpha, mode, aa);
}

/// LICE_Blit
pub fn LICE_Blit(dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, srcx: c_int, srcy: c_int, srcw: c_int, srch: c_int, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_Blit(dest, src, dstx, dsty, srcx, srcy, srcw, srch, alpha, mode);
}

/// LICE_Blur
pub fn LICE_Blur(dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, srcx: c_int, srcy: c_int, srcw: c_int, srch: c_int) void  {
	return fnPtrs.LICE_Blur(dest, src, dstx, dsty, srcx, srcy, srcw, srch);
}

/// LICE_BorderedRect
pub fn LICE_BorderedRect(dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, bgcolor: LICE_pixel, fgcolor: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_BorderedRect(dest, x, y, w, h, bgcolor, fgcolor, alpha, mode);
}

/// LICE_Circle
pub fn LICE_Circle(dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_Circle(dest, cx, cy, r, color, alpha, mode, aa);
}

/// LICE_Clear
pub fn LICE_Clear(dest: *LICE_IBitmap, color: LICE_pixel) void  {
	return fnPtrs.LICE_Clear(dest, color);
}

/// LICE_ClearRect
pub fn LICE_ClearRect(dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, mask: LICE_pixel, orbits: LICE_pixel) void  {
	return fnPtrs.LICE_ClearRect(dest, x, y, w, h, mask, orbits);
}

/// LICE_ClipLine
/// Returns false if the line is entirely offscreen.
pub fn LICE_ClipLine(pX1Out: *c_int, pY1Out: *c_int, pX2Out: *c_int, pY2Out: *c_int, xLo: c_int, yLo: c_int, xHi: c_int, yHi: c_int) bool {
	return fnPtrs.LICE_ClipLine(pX1Out, pY1Out, pX2Out, pY2Out, xLo, yLo, xHi, yHi);
}

/// LICE_Copy
pub fn LICE_Copy(dest: *LICE_IBitmap, src: *LICE_IBitmap) void  {
	return fnPtrs.LICE_Copy(dest, src);
}

/// LICE_CreateBitmap
/// create a new bitmap. this is like calling new LICE_MemBitmap (mode=0) or new LICE_SysBitmap (mode=1).
pub fn LICE_CreateBitmap(mode: c_int, w: c_int, h: c_int) ?*anyopaque {
	return fnPtrs.LICE_CreateBitmap(mode, w, h);
}

/// LICE_CreateFont
pub fn LICE_CreateFont() ?*anyopaque {
	return fnPtrs.LICE_CreateFont();
}

/// LICE_DrawCBezier
pub fn LICE_DrawCBezier(dest: *LICE_IBitmap, xstart: f64, ystart: f64, xctl1: f64, yctl1: f64, xctl2: f64, yctl2: f64, xend: f64, yend: f64, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool, tol: f64) void  {
	return fnPtrs.LICE_DrawCBezier(dest, xstart, ystart, xctl1, yctl1, xctl2, yctl2, xend, yend, color, alpha, mode, aa, tol);
}

/// LICE_DrawChar
pub fn LICE_DrawChar(bm: *LICE_IBitmap, x: c_int, y: c_int, c: [*:0]u8, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_DrawChar(bm, x, y, c, color, alpha, mode);
}

/// LICE_DrawGlyph
pub fn LICE_DrawGlyph(dest: *LICE_IBitmap, x: c_int, y: c_int, color: LICE_pixel, alphas: *LICE_pixel_chan, glyph_w: c_int, glyph_h: c_int, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_DrawGlyph(dest, x, y, color, alphas, glyph_w, glyph_h, alpha, mode);
}

/// LICE_DrawRect
pub fn LICE_DrawRect(dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_DrawRect(dest, x, y, w, h, color, alpha, mode);
}

/// LICE_DrawText
pub fn LICE_DrawText(bm: *LICE_IBitmap, x: c_int, y: c_int, string: [*:0]const u8, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_DrawText(bm, x, y, string, color, alpha, mode);
}

/// LICE_FillCBezier
pub fn LICE_FillCBezier(dest: *LICE_IBitmap, xstart: f64, ystart: f64, xctl1: f64, yctl1: f64, xctl2: f64, yctl2: f64, xend: f64, yend: f64, yfill: c_int, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool, tol: f64) void  {
	return fnPtrs.LICE_FillCBezier(dest, xstart, ystart, xctl1, yctl1, xctl2, yctl2, xend, yend, yfill, color, alpha, mode, aa, tol);
}

/// LICE_FillCircle
pub fn LICE_FillCircle(dest: *LICE_IBitmap, cx: f32, cy: f32, r: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_FillCircle(dest, cx, cy, r, color, alpha, mode, aa);
}

/// LICE_FillConvexPolygon
pub fn LICE_FillConvexPolygon(dest: *LICE_IBitmap, x: *c_int, y: *c_int, npoints: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_FillConvexPolygon(dest, x, y, npoints, color, alpha, mode);
}

/// LICE_FillRect
pub fn LICE_FillRect(dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_FillRect(dest, x, y, w, h, color, alpha, mode);
}

/// LICE_FillTrapezoid
pub fn LICE_FillTrapezoid(dest: *LICE_IBitmap, x1a: c_int, x1b: c_int, y1: c_int, x2a: c_int, x2b: c_int, y2: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_FillTrapezoid(dest, x1a, x1b, y1, x2a, x2b, y2, color, alpha, mode);
}

/// LICE_FillTriangle
pub fn LICE_FillTriangle(dest: *LICE_IBitmap, x1: c_int, y1: c_int, x2: c_int, y2: c_int, x3: c_int, y3: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_FillTriangle(dest, x1, y1, x2, y2, x3, y3, color, alpha, mode);
}

/// LICE_GetPixel
pub fn LICE_GetPixel(bm: *LICE_IBitmap, x: c_int, y: c_int) LICE_pixel  {
	return fnPtrs.LICE_GetPixel(bm, x, y);
}

/// LICE_GradRect
pub fn LICE_GradRect(dest: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, ir: f32, ig: f32, ib: f32, ia: f32, drdx: f32, dgdx: f32, dbdx: f32, dadx: f32, drdy: f32, dgdy: f32, dbdy: f32, dady: f32, mode: c_int) void  {
	return fnPtrs.LICE_GradRect(dest, dstx, dsty, dstw, dsth, ir, ig, ib, ia, drdx, dgdx, dbdx, dadx, drdy, dgdy, dbdy, dady, mode);
}

/// LICE_Line
pub fn LICE_Line(dest: *LICE_IBitmap, x1: f32, y1: f32, x2: f32, y2: f32, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_Line(dest, x1, y1, x2, y2, color, alpha, mode, aa);
}

/// LICE_LineInt
pub fn LICE_LineInt(dest: *LICE_IBitmap, x1: c_int, y1: c_int, x2: c_int, y2: c_int, color: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_LineInt(dest, x1, y1, x2, y2, color, alpha, mode, aa);
}

/// LICE_LoadPNG
pub fn LICE_LoadPNG(filename: [*:0]const u8, bmp: *LICE_IBitmap) ?*anyopaque {
	return fnPtrs.LICE_LoadPNG(filename, bmp);
}

/// LICE_LoadPNGFromResource
pub fn LICE_LoadPNGFromResource(hInst: HINSTANCE, resid: [*:0]const u8, bmp: *LICE_IBitmap) ?*anyopaque {
	return fnPtrs.LICE_LoadPNGFromResource(hInst, resid, bmp);
}

/// LICE_MeasureText
pub fn LICE_MeasureText(string: [*:0]const u8, w: *c_int, h: *c_int) void  {
	return fnPtrs.LICE_MeasureText(string, w, h);
}

/// LICE_MultiplyAddRect
pub fn LICE_MultiplyAddRect(dest: *LICE_IBitmap, x: c_int, y: c_int, w: c_int, h: c_int, rsc: f32, gsc: f32, bsc: f32, asc: f32, radd: f32, gadd: f32, badd: f32, aadd: f32) void  {
	return fnPtrs.LICE_MultiplyAddRect(dest, x, y, w, h, rsc, gsc, bsc, asc, radd, gadd, badd, aadd);
}

/// LICE_PutPixel
pub fn LICE_PutPixel(bm: *LICE_IBitmap, x: c_int, y: c_int, color: LICE_pixel, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_PutPixel(bm, x, y, color, alpha, mode);
}

/// LICE_RotatedBlit
/// these coordinates are offset from the center of the image,in source pixel coordinates
pub fn LICE_RotatedBlit(dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, srcx: f32, srcy: f32, srcw: f32, srch: f32, angle: f32, cliptosourcerect: bool, alpha: f32, mode: c_int, rotxcent: f32, rotycent: f32) void  {
	return fnPtrs.LICE_RotatedBlit(dest, src, dstx, dsty, dstw, dsth, srcx, srcy, srcw, srch, angle, cliptosourcerect, alpha, mode, rotxcent, rotycent);
}

/// LICE_RoundRect
pub fn LICE_RoundRect(drawbm: *LICE_IBitmap, xpos: f32, ypos: f32, w: f32, h: f32, cornerradius: c_int, col: LICE_pixel, alpha: f32, mode: c_int, aa: bool) void  {
	return fnPtrs.LICE_RoundRect(drawbm, xpos, ypos, w, h, cornerradius, col, alpha, mode, aa);
}

/// LICE_ScaledBlit
pub fn LICE_ScaledBlit(dest: *LICE_IBitmap, src: *LICE_IBitmap, dstx: c_int, dsty: c_int, dstw: c_int, dsth: c_int, srcx: f32, srcy: f32, srcw: f32, srch: f32, alpha: f32, mode: c_int) void  {
	return fnPtrs.LICE_ScaledBlit(dest, src, dstx, dsty, dstw, dsth, srcx, srcy, srcw, srch, alpha, mode);
}

/// LICE_SimpleFill
pub fn LICE_SimpleFill(dest: *LICE_IBitmap, x: c_int, y: c_int, newcolor: LICE_pixel, comparemask: LICE_pixel, keepmask: LICE_pixel) void  {
	return fnPtrs.LICE_SimpleFill(dest, x, y, newcolor, comparemask, keepmask);
}

/// LocalizeString
/// Returns a localized version of src_string, in section section. flags can have 1 set to only localize if sprintf-style formatting matches the original.
pub fn LocalizeString(src_string: [*:0]const u8, section: [*:0]const u8, flagsOptional: c_int) [*:0]const u8 {
	return fnPtrs.LocalizeString(src_string, section, flagsOptional);
}

/// Loop_OnArrow
/// Move the loop selection left or right. Returns true if snap is enabled.
pub fn Loop_OnArrow(project: *ReaProject, direction: c_int) bool {
	return fnPtrs.Loop_OnArrow(project, direction);
}

/// Main_OnCommand
/// See Main_OnCommandEx.
pub fn Main_OnCommand(command: c_int, flag: c_int) void  {
	return fnPtrs.Main_OnCommand(command, flag);
}

/// Main_OnCommandEx
/// Performs an action belonging to the main action section. To perform non-native actions (ReaScripts, custom or extension plugins' actions) safely, see NamedCommandLookup().
pub fn Main_OnCommandEx(command: c_int, flag: c_int, proj: *ReaProject) void  {
	return fnPtrs.Main_OnCommandEx(command, flag, proj);
}

/// Main_openProject
/// opens a project. will prompt the user to save unless name is prefixed with 'noprompt:'. If name is prefixed with 'template:', project file will be loaded as a template.
/// If passed a .RTrackTemplate file, adds the template to the existing project.
pub fn Main_openProject(name: [*:0]const u8) void  {
	return fnPtrs.Main_openProject(name);
}

/// Main_SaveProject
/// Save the project.
pub fn Main_SaveProject(proj: *ReaProject, forceSaveAsInOptional: bool) void  {
	return fnPtrs.Main_SaveProject(proj, forceSaveAsInOptional);
}

/// Main_UpdateLoopInfo
pub fn Main_UpdateLoopInfo(ignoremask: c_int) void  {
	return fnPtrs.Main_UpdateLoopInfo(ignoremask);
}

/// MarkProjectDirty
/// Marks project as dirty (needing save) if 'undo/prompt to save' is enabled in preferences.
pub fn MarkProjectDirty(proj: *ReaProject) void  {
	return fnPtrs.MarkProjectDirty(proj);
}

/// MarkTrackItemsDirty
/// If track is supplied, item is ignored
pub fn MarkTrackItemsDirty(track: *MediaTrack, item: *MediaItem) void  {
	return fnPtrs.MarkTrackItemsDirty(track, item);
}

/// Master_GetPlayRate
pub fn Master_GetPlayRate(project: *ReaProject) f64 {
	return fnPtrs.Master_GetPlayRate(project);
}

/// Master_GetPlayRateAtTime
pub fn Master_GetPlayRateAtTime(time_s: f64, proj: *ReaProject) f64 {
	return fnPtrs.Master_GetPlayRateAtTime(time_s, proj);
}

/// Master_GetTempo
pub fn Master_GetTempo() f64 {
	return fnPtrs.Master_GetTempo();
}

/// Master_NormalizePlayRate
/// Convert play rate to/from a value between 0 and 1, representing the position on the project playrate slider.
pub fn Master_NormalizePlayRate(playrate: f64, isnormalized: bool) f64 {
	return fnPtrs.Master_NormalizePlayRate(playrate, isnormalized);
}

/// Master_NormalizeTempo
/// Convert the tempo to/from a value between 0 and 1, representing bpm in the range of 40-296 bpm.
pub fn Master_NormalizeTempo(bpm: f64, isnormalized: bool) f64 {
	return fnPtrs.Master_NormalizeTempo(bpm, isnormalized);
}

/// MB
/// type 0=OK,1=OKCANCEL,2=ABORTRETRYIGNORE,3=YESNOCANCEL,4=YESNO,5=RETRYCANCEL : ret 1=OK,2=CANCEL,3=ABORT,4=RETRY,5=IGNORE,6=YES,7=NO
pub fn MB(msg: [*:0]const u8, title: [*:0]const u8, typeOut: c_int) c_int {
	return fnPtrs.MB(msg, title, typeOut);
}

/// MediaItemDescendsFromTrack
/// Returns 1 if the track holds the item, 2 if the track is a folder containing the track that holds the item, etc.
pub fn MediaItemDescendsFromTrack(item: *MediaItem, track: *MediaTrack) c_int {
	return fnPtrs.MediaItemDescendsFromTrack(item, track);
}

/// MIDI_CountEvts
/// Count the number of notes, CC events, and text/sysex events in a given MIDI item.
pub fn MIDI_CountEvts(take: *MediaItem_Take, notecntOut: *c_int, ccevtcntOut: *c_int, textsyxevtcntOut: *c_int) c_int {
	return fnPtrs.MIDI_CountEvts(take, notecntOut, ccevtcntOut, textsyxevtcntOut);
}

/// MIDI_DeleteCC
/// Delete a MIDI CC event.
pub fn MIDI_DeleteCC(take: *MediaItem_Take, ccidx: c_int) bool {
	return fnPtrs.MIDI_DeleteCC(take, ccidx);
}

/// MIDI_DeleteEvt
/// Delete a MIDI event.
pub fn MIDI_DeleteEvt(take: *MediaItem_Take, evtidx: c_int) bool {
	return fnPtrs.MIDI_DeleteEvt(take, evtidx);
}

/// MIDI_DeleteNote
/// Delete a MIDI note.
pub fn MIDI_DeleteNote(take: *MediaItem_Take, noteidx: c_int) bool {
	return fnPtrs.MIDI_DeleteNote(take, noteidx);
}

/// MIDI_DeleteTextSysexEvt
/// Delete a MIDI text or sysex event.
pub fn MIDI_DeleteTextSysexEvt(take: *MediaItem_Take, textsyxevtidx: c_int) bool {
	return fnPtrs.MIDI_DeleteTextSysexEvt(take, textsyxevtidx);
}

/// MIDI_DisableSort
/// Disable sorting for all MIDI insert, delete, get and set functions, until MIDI_Sort is called.
pub fn MIDI_DisableSort(take: *MediaItem_Take) void  {
	return fnPtrs.MIDI_DisableSort(take);
}

/// MIDI_EnumSelCC
/// Returns the index of the next selected MIDI CC event after ccidx (-1 if there are no more selected events).
pub fn MIDI_EnumSelCC(take: *MediaItem_Take, ccidx: c_int) c_int {
	return fnPtrs.MIDI_EnumSelCC(take, ccidx);
}

/// MIDI_EnumSelEvts
/// Returns the index of the next selected MIDI event after evtidx (-1 if there are no more selected events).
pub fn MIDI_EnumSelEvts(take: *MediaItem_Take, evtidx: c_int) c_int {
	return fnPtrs.MIDI_EnumSelEvts(take, evtidx);
}

/// MIDI_EnumSelNotes
/// Returns the index of the next selected MIDI note after noteidx (-1 if there are no more selected events).
pub fn MIDI_EnumSelNotes(take: *MediaItem_Take, noteidx: c_int) c_int {
	return fnPtrs.MIDI_EnumSelNotes(take, noteidx);
}

/// MIDI_EnumSelTextSysexEvts
/// Returns the index of the next selected MIDI text/sysex event after textsyxidx (-1 if there are no more selected events).
pub fn MIDI_EnumSelTextSysexEvts(take: *MediaItem_Take, textsyxidx: c_int) c_int {
	return fnPtrs.MIDI_EnumSelTextSysexEvts(take, textsyxidx);
}

/// MIDI_eventlist_Create
/// Create a MIDI_eventlist object. The returned object must be deleted with MIDI_eventlist_destroy().
pub fn MIDI_eventlist_Create() ?*anyopaque {
	return fnPtrs.MIDI_eventlist_Create();
}

/// MIDI_eventlist_Destroy
/// Destroy a MIDI_eventlist object that was created using MIDI_eventlist_Create().
pub fn MIDI_eventlist_Destroy(evtlist: *MIDI_eventlist) void  {
	return fnPtrs.MIDI_eventlist_Destroy(evtlist);
}

/// MIDI_GetAllEvts
/// Get all MIDI data. MIDI buffer is returned as a list of { int offset, char flag, int msglen, unsigned char msg[] }.
/// offset: MIDI ticks from previous event
/// flag: &1=selected &2=muted
/// flag high 4 bits for CC shape: &16=linear, &32=slow start/end, &16|32=fast start, &64=fast end, &64|16=bezier
/// msg: the MIDI message.
/// A meta-event of type 0xF followed by 'CCBZ ' and 5 more bytes represents bezier curve data for the previous MIDI event: 1 byte for the bezier type (usually 0) and 4 bytes for the bezier tension as a float.
/// For tick intervals longer than a 32 bit word can represent, zero-length meta events may be placed between valid events.
/// See MIDI_SetAllEvts.
pub fn MIDI_GetAllEvts(take: *MediaItem_Take, bufNeedBig: [*:0]u8, bufNeedBig_sz: *c_int) bool {
	return fnPtrs.MIDI_GetAllEvts(take, bufNeedBig, bufNeedBig_sz);
}

/// MIDI_GetCC
/// Get MIDI CC event properties.
pub fn MIDI_GetCC(take: *MediaItem_Take, ccidx: c_int, selectedOut: *bool, mutedOut: *bool, ppqposOut: *f64, chanmsgOut: *c_int, chanOut: *c_int, msg2Out: *c_int, msg3Out: *c_int) bool {
	return fnPtrs.MIDI_GetCC(take, ccidx, selectedOut, mutedOut, ppqposOut, chanmsgOut, chanOut, msg2Out, msg3Out);
}

/// MIDI_GetCCShape
/// Get CC shape and bezier tension. See MIDI_GetCC, MIDI_SetCCShape
pub fn MIDI_GetCCShape(take: *MediaItem_Take, ccidx: c_int, shapeOut: *c_int, beztensionOut: *f64) bool {
	return fnPtrs.MIDI_GetCCShape(take, ccidx, shapeOut, beztensionOut);
}

/// MIDI_GetEvt
/// Get MIDI event properties.
pub fn MIDI_GetEvt(take: *MediaItem_Take, evtidx: c_int, selectedOut: *bool, mutedOut: *bool, ppqposOut: *f64, msg: [*:0]u8, msg_sz: *c_int) bool {
	return fnPtrs.MIDI_GetEvt(take, evtidx, selectedOut, mutedOut, ppqposOut, msg, msg_sz);
}

/// MIDI_GetGrid
/// Returns the most recent MIDI editor grid size for this MIDI take, in QN. Swing is between 0 and 1. Note length is 0 if it follows the grid size.
pub fn MIDI_GetGrid(take: *MediaItem_Take, swingOutOptional: *f64, noteLenOutOptional: *f64) f64 {
	return fnPtrs.MIDI_GetGrid(take, swingOutOptional, noteLenOutOptional);
}

/// MIDI_GetHash
/// Get a string that only changes when the MIDI data changes. If notesonly==true, then the string changes only when the MIDI notes change. See MIDI_GetTrackHash
pub fn MIDI_GetHash(take: *MediaItem_Take, notesonly: bool, hash: [*:0]u8, hash_sz: c_int) bool {
	return fnPtrs.MIDI_GetHash(take, notesonly, hash, hash_sz);
}

/// MIDI_GetNote
/// Get MIDI note properties.
pub fn MIDI_GetNote(take: *MediaItem_Take, noteidx: c_int, selectedOut: *bool, mutedOut: *bool, startppqposOut: *f64, endppqposOut: *f64, chanOut: *c_int, pitchOut: *c_int, velOut: *c_int) bool {
	return fnPtrs.MIDI_GetNote(take, noteidx, selectedOut, mutedOut, startppqposOut, endppqposOut, chanOut, pitchOut, velOut);
}

/// MIDI_GetPPQPos_EndOfMeasure
/// Returns the MIDI tick (ppq) position corresponding to the end of the measure.
pub fn MIDI_GetPPQPos_EndOfMeasure(take: *MediaItem_Take, ppqpos: f64) f64 {
	return fnPtrs.MIDI_GetPPQPos_EndOfMeasure(take, ppqpos);
}

/// MIDI_GetPPQPos_StartOfMeasure
/// Returns the MIDI tick (ppq) position corresponding to the start of the measure.
pub fn MIDI_GetPPQPos_StartOfMeasure(take: *MediaItem_Take, ppqpos: f64) f64 {
	return fnPtrs.MIDI_GetPPQPos_StartOfMeasure(take, ppqpos);
}

/// MIDI_GetPPQPosFromProjQN
/// Returns the MIDI tick (ppq) position corresponding to a specific project time in quarter notes.
pub fn MIDI_GetPPQPosFromProjQN(take: *MediaItem_Take, projqn: f64) f64 {
	return fnPtrs.MIDI_GetPPQPosFromProjQN(take, projqn);
}

/// MIDI_GetPPQPosFromProjTime
/// Returns the MIDI tick (ppq) position corresponding to a specific project time in seconds.
pub fn MIDI_GetPPQPosFromProjTime(take: *MediaItem_Take, projtime: f64) f64 {
	return fnPtrs.MIDI_GetPPQPosFromProjTime(take, projtime);
}

/// MIDI_GetProjQNFromPPQPos
/// Returns the project time in quarter notes corresponding to a specific MIDI tick (ppq) position.
pub fn MIDI_GetProjQNFromPPQPos(take: *MediaItem_Take, ppqpos: f64) f64 {
	return fnPtrs.MIDI_GetProjQNFromPPQPos(take, ppqpos);
}

/// MIDI_GetProjTimeFromPPQPos
/// Returns the project time in seconds corresponding to a specific MIDI tick (ppq) position.
pub fn MIDI_GetProjTimeFromPPQPos(take: *MediaItem_Take, ppqpos: f64) f64 {
	return fnPtrs.MIDI_GetProjTimeFromPPQPos(take, ppqpos);
}

/// MIDI_GetScale
/// Get the active scale in the media source, if any. root 0=C, 1=C#, etc. scale &0x1=root, &0x2=minor 2nd, &0x4=major 2nd, &0x8=minor 3rd, &0xF=fourth, etc.
pub fn MIDI_GetScale(take: *MediaItem_Take, rootOut: *c_int, scaleOut: *c_int, name: [*:0]u8, name_sz: c_int) bool {
	return fnPtrs.MIDI_GetScale(take, rootOut, scaleOut, name, name_sz);
}

/// MIDI_GetTextSysexEvt
/// Get MIDI meta-event properties. Allowable types are -1:sysex (msg should not include bounding F0..F7), 1-14:MIDI text event types, 15=REAPER notation event. For all other meta-messages, type is returned as -2 and msg returned as all zeroes. See MIDI_GetEvt.
pub fn MIDI_GetTextSysexEvt(take: *MediaItem_Take, textsyxevtidx: c_int, selectedOutOptional: *bool, mutedOutOptional: *bool, ppqposOutOptional: *f64, typeOutOptional: *c_int, msgOptional: [*:0]u8, msgOptional_sz: *c_int) bool {
	return fnPtrs.MIDI_GetTextSysexEvt(take, textsyxevtidx, selectedOutOptional, mutedOutOptional, ppqposOutOptional, typeOutOptional, msgOptional, msgOptional_sz);
}

/// MIDI_GetTrackHash
/// Get a string that only changes when the MIDI data changes. If notesonly==true, then the string changes only when the MIDI notes change. See MIDI_GetHash
pub fn MIDI_GetTrackHash(track: *MediaTrack, notesonly: bool, hash: [*:0]u8, hash_sz: c_int) bool {
	return fnPtrs.MIDI_GetTrackHash(track, notesonly, hash, hash_sz);
}

/// MIDI_InsertCC
/// Insert a new MIDI CC event.
pub fn MIDI_InsertCC(take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, chanmsg: c_int, chan: c_int, msg2: c_int, msg3: c_int) bool {
	return fnPtrs.MIDI_InsertCC(take, selected, muted, ppqpos, chanmsg, chan, msg2, msg3);
}

/// MIDI_InsertEvt
/// Insert a new MIDI event.
pub fn MIDI_InsertEvt(take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, bytestr: [*:0]const u8, bytestr_sz: c_int) bool {
	return fnPtrs.MIDI_InsertEvt(take, selected, muted, ppqpos, bytestr, bytestr_sz);
}

/// MIDI_InsertNote
/// Insert a new MIDI note. Set noSort if inserting multiple events, then call MIDI_Sort when done.
pub fn MIDI_InsertNote(take: *MediaItem_Take, selected: bool, muted: bool, startppqpos: f64, endppqpos: f64, chan: c_int, pitch: c_int, vel: c_int, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_InsertNote(take, selected, muted, startppqpos, endppqpos, chan, pitch, vel, noSortInOptional);
}

/// MIDI_InsertTextSysexEvt
/// Insert a new MIDI text or sysex event. Allowable types are -1:sysex (msg should not include bounding F0..F7), 1-14:MIDI text event types, 15=REAPER notation event.
pub fn MIDI_InsertTextSysexEvt(take: *MediaItem_Take, selected: bool, muted: bool, ppqpos: f64, typeOut: c_int, bytestr: [*:0]const u8, bytestr_sz: c_int) bool {
	return fnPtrs.MIDI_InsertTextSysexEvt(take, selected, muted, ppqpos, typeOut, bytestr, bytestr_sz);
}

/// midi_reinit
/// Reset all MIDI devices
pub fn midi_reinit() void  {
	return fnPtrs.midi_reinit();
}

/// MIDI_SelectAll
/// Select or deselect all MIDI content.
pub fn MIDI_SelectAll(take: *MediaItem_Take, select: bool) void  {
	return fnPtrs.MIDI_SelectAll(take, select);
}

/// MIDI_SetAllEvts
/// Set all MIDI data. MIDI buffer is passed in as a list of { int offset, char flag, int msglen, unsigned char msg[] }.
/// offset: MIDI ticks from previous event
/// flag: &1=selected &2=muted
/// flag high 4 bits for CC shape: &16=linear, &32=slow start/end, &16|32=fast start, &64=fast end, &64|16=bezier
/// msg: the MIDI message.
/// A meta-event of type 0xF followed by 'CCBZ ' and 5 more bytes represents bezier curve data for the previous MIDI event: 1 byte for the bezier type (usually 0) and 4 bytes for the bezier tension as a float.
/// For tick intervals longer than a 32 bit word can represent, zero-length meta events may be placed between valid events.
/// See MIDI_GetAllEvts.
pub fn MIDI_SetAllEvts(take: *MediaItem_Take, buf: [*:0]const u8, buf_sz: c_int) bool {
	return fnPtrs.MIDI_SetAllEvts(take, buf, buf_sz);
}

/// MIDI_SetCC
/// Set MIDI CC event properties. Properties passed as NULL will not be set. set noSort if setting multiple events, then call MIDI_Sort when done.
pub fn MIDI_SetCC(take: *MediaItem_Take, ccidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, chanmsgInOptional: *c_int, chanInOptional: *c_int, msg2InOptional: *c_int, msg3InOptional: *c_int, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_SetCC(take, ccidx, selectedInOptional, mutedInOptional, ppqposInOptional, chanmsgInOptional, chanInOptional, msg2InOptional, msg3InOptional, noSortInOptional);
}

/// MIDI_SetCCShape
/// Set CC shape and bezier tension. set noSort if setting multiple events, then call MIDI_Sort when done. See MIDI_SetCC, MIDI_GetCCShape
pub fn MIDI_SetCCShape(take: *MediaItem_Take, ccidx: c_int, shape: c_int, beztension: f64, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_SetCCShape(take, ccidx, shape, beztension, noSortInOptional);
}

/// MIDI_SetEvt
/// Set MIDI event properties. Properties passed as NULL will not be set.  set noSort if setting multiple events, then call MIDI_Sort when done.
pub fn MIDI_SetEvt(take: *MediaItem_Take, evtidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, msgOptional: [*:0]const u8, msgOptional_sz: c_int, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_SetEvt(take, evtidx, selectedInOptional, mutedInOptional, ppqposInOptional, msgOptional, msgOptional_sz, noSortInOptional);
}

/// MIDI_SetItemExtents
/// Set the start/end positions of a media item that contains a MIDI take.
pub fn MIDI_SetItemExtents(item: *MediaItem, startQN: f64, endQN: f64) bool {
	return fnPtrs.MIDI_SetItemExtents(item, startQN, endQN);
}

/// MIDI_SetNote
/// Set MIDI note properties. Properties passed as NULL (or negative values) will not be set. Set noSort if setting multiple events, then call MIDI_Sort when done. Setting multiple note start positions at once is done more safely by deleting and re-inserting the notes.
pub fn MIDI_SetNote(take: *MediaItem_Take, noteidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, startppqposInOptional: *f64, endppqposInOptional: *f64, chanInOptional: *c_int, pitchInOptional: *c_int, velInOptional: *c_int, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_SetNote(take, noteidx, selectedInOptional, mutedInOptional, startppqposInOptional, endppqposInOptional, chanInOptional, pitchInOptional, velInOptional, noSortInOptional);
}

/// MIDI_SetTextSysexEvt
/// Set MIDI text or sysex event properties. Properties passed as NULL will not be set. Allowable types are -1:sysex (msg should not include bounding F0..F7), 1-14:MIDI text event types, 15=REAPER notation event. set noSort if setting multiple events, then call MIDI_Sort when done.
pub fn MIDI_SetTextSysexEvt(take: *MediaItem_Take, textsyxevtidx: c_int, selectedInOptional: *const bool, mutedInOptional: *const bool, ppqposInOptional: *f64, typeInOptional: *c_int, msgOptional: [*:0]const u8, msgOptional_sz: c_int, noSortInOptional: *const bool) bool {
	return fnPtrs.MIDI_SetTextSysexEvt(take, textsyxevtidx, selectedInOptional, mutedInOptional, ppqposInOptional, typeInOptional, msgOptional, msgOptional_sz, noSortInOptional);
}

/// MIDI_Sort
/// Sort MIDI events after multiple calls to MIDI_SetNote, MIDI_SetCC, etc.
pub fn MIDI_Sort(take: *MediaItem_Take) void  {
	return fnPtrs.MIDI_Sort(take);
}

/// MIDIEditor_GetActive
/// get a pointer to the focused MIDI editor window
/// see MIDIEditor_GetMode, MIDIEditor_OnCommand
pub fn MIDIEditor_GetActive() HWND  {
	return fnPtrs.MIDIEditor_GetActive();
}

/// MIDIEditor_GetMode
/// get the mode of a MIDI editor (0=piano roll, 1=event list, -1=invalid editor)
/// see MIDIEditor_GetActive, MIDIEditor_OnCommand
pub fn MIDIEditor_GetMode(midieditor: HWND) c_int {
	return fnPtrs.MIDIEditor_GetMode(midieditor);
}

/// MIDIEditor_GetSetting_int
/// Get settings from a MIDI editor. setting_desc can be:
/// snap_enabled: returns 0 or 1
/// active_note_row: returns 0-127
/// last_clicked_cc_lane: returns 0-127=CC, 0x100|(0-31)=14-bit CC, 0x200=velocity, 0x201=pitch, 0x202=program, 0x203=channel pressure, 0x204=bank/program select, 0x205=text, 0x206=sysex, 0x207=off velocity, 0x208=notation events, 0x210=media item lane
/// default_note_vel: returns 0-127
/// default_note_chan: returns 0-15
/// default_note_len: returns default length in MIDI ticks
/// scale_enabled: returns 0-1
/// scale_root: returns 0-12 (0=C)
/// if setting_desc is unsupported, the function returns -1.
/// See MIDIEditor_SetSetting_int, MIDIEditor_GetActive, MIDIEditor_GetSetting_str
/// 
pub fn MIDIEditor_GetSetting_int(midieditor: HWND, setting_desc: [*:0]const u8) c_int {
	return fnPtrs.MIDIEditor_GetSetting_int(midieditor, setting_desc);
}

/// MIDIEditor_GetSetting_str
/// Get settings from a MIDI editor. setting_desc can be:
/// last_clicked_cc_lane: returns text description ("velocity", "pitch", etc)
/// scale: returns the scale record, for example "102034050607" for a major scale
/// if setting_desc is unsupported, the function returns false.
/// See MIDIEditor_GetActive, MIDIEditor_GetSetting_int
/// 
pub fn MIDIEditor_GetSetting_str(midieditor: HWND, setting_desc: [*:0]const u8, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.MIDIEditor_GetSetting_str(midieditor, setting_desc, buf, buf_sz);
}

/// MIDIEditor_GetTake
/// get the take that is currently being edited in this MIDI editor
pub fn MIDIEditor_GetTake(midieditor: HWND) ?*anyopaque {
	return fnPtrs.MIDIEditor_GetTake(midieditor);
}

/// MIDIEditor_LastFocused_OnCommand
/// Send an action command to the last focused MIDI editor. Returns false if there is no MIDI editor open, or if the view mode (piano roll or event list) does not match the input.
/// see MIDIEditor_OnCommand
pub fn MIDIEditor_LastFocused_OnCommand(command_id: c_int, islistviewcommand: bool) bool {
	return fnPtrs.MIDIEditor_LastFocused_OnCommand(command_id, islistviewcommand);
}

/// MIDIEditor_OnCommand
/// Send an action command to a MIDI editor. Returns false if the supplied MIDI editor pointer is not valid (not an open MIDI editor).
/// see MIDIEditor_GetActive, MIDIEditor_LastFocused_OnCommand
pub fn MIDIEditor_OnCommand(midieditor: HWND, command_id: c_int) bool {
	return fnPtrs.MIDIEditor_OnCommand(midieditor, command_id);
}

/// MIDIEditor_SetSetting_int
/// Set settings for a MIDI editor. setting_desc can be:
/// active_note_row: 0-127
/// See MIDIEditor_GetSetting_int
/// 
pub fn MIDIEditor_SetSetting_int(midieditor: HWND, setting_desc: [*:0]const u8, setting: c_int) bool {
	return fnPtrs.MIDIEditor_SetSetting_int(midieditor, setting_desc, setting);
}

/// mkpanstr
pub fn mkpanstr(strNeed64: [*:0]u8, pan: f64) void  {
	return fnPtrs.mkpanstr(strNeed64, pan);
}

/// mkvolpanstr
pub fn mkvolpanstr(strNeed64: [*:0]u8, vol: f64, pan: f64) void  {
	return fnPtrs.mkvolpanstr(strNeed64, vol, pan);
}

/// mkvolstr
pub fn mkvolstr(strNeed64: [*:0]u8, vol: f64) void  {
	return fnPtrs.mkvolstr(strNeed64, vol);
}

/// MoveEditCursor
pub fn MoveEditCursor(adjamt: f64, dosel: bool) void  {
	return fnPtrs.MoveEditCursor(adjamt, dosel);
}

/// MoveMediaItemToTrack
/// returns TRUE if move succeeded
pub fn MoveMediaItemToTrack(item: *MediaItem, desttr: *MediaTrack) bool {
	return fnPtrs.MoveMediaItemToTrack(item, desttr);
}

/// MuteAllTracks
pub fn MuteAllTracks(mute: bool) void  {
	return fnPtrs.MuteAllTracks(mute);
}

/// my_getViewport
pub fn my_getViewport(r: *RECT, sr: *const RECT, wantWorkArea: bool) void  {
	return fnPtrs.my_getViewport(r, sr, wantWorkArea);
}

/// NamedCommandLookup
/// Get the command ID number for named command that was registered by an extension such as "_SWS_ABOUT" or "_113088d11ae641c193a2b7ede3041ad5" for a ReaScript or a custom action.
pub fn NamedCommandLookup(command_name: [*:0]const u8) c_int {
	return fnPtrs.NamedCommandLookup(command_name);
}

/// OnPauseButton
/// direct way to simulate pause button hit
pub fn OnPauseButton() void  {
	return fnPtrs.OnPauseButton();
}

/// OnPauseButtonEx
/// direct way to simulate pause button hit
pub fn OnPauseButtonEx(proj: *ReaProject) void  {
	return fnPtrs.OnPauseButtonEx(proj);
}

/// OnPlayButton
/// direct way to simulate play button hit
pub fn OnPlayButton() void  {
	return fnPtrs.OnPlayButton();
}

/// OnPlayButtonEx
/// direct way to simulate play button hit
pub fn OnPlayButtonEx(proj: *ReaProject) void  {
	return fnPtrs.OnPlayButtonEx(proj);
}

/// OnStopButton
/// direct way to simulate stop button hit
pub fn OnStopButton() void  {
	return fnPtrs.OnStopButton();
}

/// OnStopButtonEx
/// direct way to simulate stop button hit
pub fn OnStopButtonEx(proj: *ReaProject) void  {
	return fnPtrs.OnStopButtonEx(proj);
}

/// OpenColorThemeFile
pub fn OpenColorThemeFile(fnOut: [*:0]const u8) bool {
	return fnPtrs.OpenColorThemeFile(fnOut);
}

/// OpenMediaExplorer
/// Opens mediafn in the Media Explorer, play=true will play the file immediately (or toggle playback if mediafn was already open), =false will just select it.
pub fn OpenMediaExplorer(mediafn: [*:0]const u8, play: bool) HWND  {
	return fnPtrs.OpenMediaExplorer(mediafn, play);
}

/// OscLocalMessageToHost
/// Send an OSC message directly to REAPER. The value argument may be NULL. The message will be matched against the default OSC patterns. Only supported if control surface support was enabled when installing REAPER.
pub fn OscLocalMessageToHost(message: [*:0]const u8, valueInOptional: *f64) void  {
	return fnPtrs.OscLocalMessageToHost(message, valueInOptional);
}

/// parse_timestr
/// Parse hh:mm:ss.sss time string, return time in seconds (or 0.0 on error). See parse_timestr_pos, parse_timestr_len.
pub fn parse_timestr(buf: [*:0]const u8) f64 {
	return fnPtrs.parse_timestr(buf);
}

/// parse_timestr_len
/// time formatting mode overrides: -1=proj default.
/// 0=time
/// 1=measures.beats + time
/// 2=measures.beats
/// 3=seconds
/// 4=samples
/// 5=h:m:s:f
/// 
pub fn parse_timestr_len(buf: [*:0]const u8, offset: f64, modeoverride: c_int) f64 {
	return fnPtrs.parse_timestr_len(buf, offset, modeoverride);
}

/// parse_timestr_pos
/// Parse time string, time formatting mode overrides: -1=proj default.
/// 0=time
/// 1=measures.beats + time
/// 2=measures.beats
/// 3=seconds
/// 4=samples
/// 5=h:m:s:f
/// 
pub fn parse_timestr_pos(buf: [*:0]const u8, modeoverride: c_int) f64 {
	return fnPtrs.parse_timestr_pos(buf, modeoverride);
}

/// parsepanstr
pub fn parsepanstr(str: [*:0]const u8) f64 {
	return fnPtrs.parsepanstr(str);
}

/// PCM_Sink_Create
pub fn PCM_Sink_Create(filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, nch: c_int, srate: c_int, buildpeaks: bool) ?*anyopaque {
	return fnPtrs.PCM_Sink_Create(filename, cfg, cfg_sz, nch, srate, buildpeaks);
}

/// PCM_Sink_CreateEx
pub fn PCM_Sink_CreateEx(proj: *ReaProject, filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, nch: c_int, srate: c_int, buildpeaks: bool) ?*anyopaque {
	return fnPtrs.PCM_Sink_CreateEx(proj, filename, cfg, cfg_sz, nch, srate, buildpeaks);
}

/// PCM_Sink_CreateMIDIFile
pub fn PCM_Sink_CreateMIDIFile(filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, bpm: f64, div: c_int) ?*anyopaque {
	return fnPtrs.PCM_Sink_CreateMIDIFile(filename, cfg, cfg_sz, bpm, div);
}

/// PCM_Sink_CreateMIDIFileEx
pub fn PCM_Sink_CreateMIDIFileEx(proj: *ReaProject, filename: [*:0]const u8, cfg: [*:0]const u8, cfg_sz: c_int, bpm: f64, div: c_int) ?*anyopaque {
	return fnPtrs.PCM_Sink_CreateMIDIFileEx(proj, filename, cfg, cfg_sz, bpm, div);
}

/// PCM_Sink_Enum
pub fn PCM_Sink_Enum(idx: c_int, descstrOut: [*:0]const u8) c_uint {
	return fnPtrs.PCM_Sink_Enum(idx, descstrOut);
}

/// PCM_Sink_GetExtension
pub fn PCM_Sink_GetExtension(data: [*:0]const u8, data_sz: c_int) [*:0]const u8 {
	return fnPtrs.PCM_Sink_GetExtension(data, data_sz);
}

/// PCM_Sink_ShowConfig
pub fn PCM_Sink_ShowConfig(cfg: [*:0]const u8, cfg_sz: c_int, hwndParent: HWND) HWND  {
	return fnPtrs.PCM_Sink_ShowConfig(cfg, cfg_sz, hwndParent);
}

/// PCM_Source_CreateFromFile
/// See PCM_Source_CreateFromFileEx.
pub fn PCM_Source_CreateFromFile(filename: [*:0]const u8) ?*anyopaque {
	return fnPtrs.PCM_Source_CreateFromFile(filename);
}

/// PCM_Source_CreateFromFileEx
/// Create a PCM_source from filename, and override pref of MIDI files being imported as in-project MIDI events.
pub fn PCM_Source_CreateFromFileEx(filename: [*:0]const u8, forcenoMidiImp: bool) ?*anyopaque {
	return fnPtrs.PCM_Source_CreateFromFileEx(filename, forcenoMidiImp);
}

/// PCM_Source_CreateFromSimple
/// Creates a PCM_source from a ISimpleMediaDecoder
/// (if fn is non-null, it will open the file in dec)
pub fn PCM_Source_CreateFromSimple(dec: *ISimpleMediaDecoder, fnOut: [*:0]const u8) ?*anyopaque {
	return fnPtrs.PCM_Source_CreateFromSimple(dec, fnOut);
}

/// PCM_Source_CreateFromType
/// Create a PCM_source from a "type" (use this if you're going to load its state via LoadState/ProjectStateContext).
/// Valid types include "WAVE", "MIDI", or whatever plug-ins define as well.
pub fn PCM_Source_CreateFromType(sourcetype: [*:0]const u8) ?*anyopaque {
	return fnPtrs.PCM_Source_CreateFromType(sourcetype);
}

/// PCM_Source_Destroy
/// Deletes a PCM_source -- be sure that you remove any project reference before deleting a source
pub fn PCM_Source_Destroy(src: *PCM_source) void  {
	return fnPtrs.PCM_Source_Destroy(src);
}

/// PCM_Source_GetPeaks
/// Gets block of peak samples to buf. Note that the peak samples are interleaved, but in two or three blocks (maximums, then minimums, then extra). Return value has 20 bits of returned sample count, then 4 bits of output_mode (0xf00000), then a bit to signify whether extra_type was available (0x1000000). extra_type can be 115 ('s') for spectral information, which will return peak samples as integers with the low 15 bits frequency, next 14 bits tonality.
pub fn PCM_Source_GetPeaks(src: *PCM_source, peakrate: f64, starttime: f64, numchannels: c_int, numsamplesperchannel: c_int, want_extra_type: c_int, buf: *f64) c_int {
	return fnPtrs.PCM_Source_GetPeaks(src, peakrate, starttime, numchannels, numsamplesperchannel, want_extra_type, buf);
}

/// PCM_Source_GetSectionInfo
/// If a section/reverse block, retrieves offset/len/reverse. return true if success
pub fn PCM_Source_GetSectionInfo(src: *PCM_source, offsOut: *f64, lenOut: *f64, revOut: *bool) bool {
	return fnPtrs.PCM_Source_GetSectionInfo(src, offsOut, lenOut, revOut);
}

/// PeakBuild_Create
pub fn PeakBuild_Create(src: *PCM_source, fnOut: [*:0]const u8, srate: c_int, nch: c_int) ?*anyopaque {
	return fnPtrs.PeakBuild_Create(src, fnOut, srate, nch);
}

/// PeakBuild_CreateEx
/// flags&1 for FP support
pub fn PeakBuild_CreateEx(src: *PCM_source, fnOut: [*:0]const u8, srate: c_int, nch: c_int, flags: c_int) ?*anyopaque {
	return fnPtrs.PeakBuild_CreateEx(src, fnOut, srate, nch, flags);
}

/// PeakGet_Create
pub fn PeakGet_Create(fnOut: [*:0]const u8, srate: c_int, nch: c_int) ?*anyopaque {
	return fnPtrs.PeakGet_Create(fnOut, srate, nch);
}

/// PitchShiftSubModeMenu
/// menu to select/modify pitch shifter submode, returns new value (or old value if no item selected)
pub fn PitchShiftSubModeMenu(hwnd: HWND, x: c_int, y: c_int, mode: c_int, submode_sel: c_int) c_int {
	return fnPtrs.PitchShiftSubModeMenu(hwnd, x, y, mode, submode_sel);
}

/// PlayPreview
/// return nonzero on success
pub fn PlayPreview(preview: *preview_register_t) c_int {
	return fnPtrs.PlayPreview(preview);
}

/// PlayPreviewEx
/// return nonzero on success. bufflags &1=buffer source, &2=treat length changes in source as varispeed and adjust internal state accordingly if buffering. measure_align<0=play immediately, >0=align playback with measure start
pub fn PlayPreviewEx(preview: *preview_register_t, bufflags: c_int, measure_align: f64) c_int {
	return fnPtrs.PlayPreviewEx(preview, bufflags, measure_align);
}

/// PlayTrackPreview
/// return nonzero on success,in these,m_out_chan is a track index (0-n)
pub fn PlayTrackPreview(preview: *preview_register_t) c_int {
	return fnPtrs.PlayTrackPreview(preview);
}

/// PlayTrackPreview2
/// return nonzero on success,in these,m_out_chan is a track index (0-n)
pub fn PlayTrackPreview2(proj: *ReaProject, preview: *preview_register_t) c_int {
	return fnPtrs.PlayTrackPreview2(proj, preview);
}

/// PlayTrackPreview2Ex
/// return nonzero on success,in these,m_out_chan is a track index (0-n). see PlayPreviewEx
pub fn PlayTrackPreview2Ex(proj: *ReaProject, preview: *preview_register_t, flags: c_int, measure_align: f64) c_int {
	return fnPtrs.PlayTrackPreview2Ex(proj, preview, flags, measure_align);
}

/// plugin_getapi
pub fn plugin_getapi(name: [*:0]const u8) ?*anyopaque {
	return fnPtrs.plugin_getapi(name);
}

/// plugin_getFilterList
/// Returns a double-NULL terminated list of importable media files, suitable for passing to GetOpenFileName() etc. Includes *.* (All files).
pub fn plugin_getFilterList() [*:0]const u8 {
	return fnPtrs.plugin_getFilterList();
}

/// plugin_getImportableProjectFilterList
/// Returns a double-NULL terminated list of importable project files, suitable for passing to GetOpenFileName() etc. Includes *.* (All files).
pub fn plugin_getImportableProjectFilterList() [*:0]const u8 {
	return fnPtrs.plugin_getImportableProjectFilterList();
}

/// plugin_register
/// Alias for reaper_plugin_info_t::Register, see reaper_plugin.h for documented uses.
pub fn plugin_register(name: [*:0]const u8, infostruct: *anyopaque) c_int {
	return fnPtrs.plugin_register(name, infostruct);
}

/// PluginWantsAlwaysRunFx
pub fn PluginWantsAlwaysRunFx(amt: c_int) void  {
	return fnPtrs.PluginWantsAlwaysRunFx(amt);
}

/// PreventUIRefresh
/// adds prevent_count to the UI refresh prevention state; always add then remove the same amount, or major disfunction will occur
pub fn PreventUIRefresh(prevent_count: c_int) void  {
	return fnPtrs.PreventUIRefresh(prevent_count);
}

/// projectconfig_var_addr
pub fn projectconfig_var_addr(proj: *ReaProject, idx: c_int) ?*anyopaque {
	return fnPtrs.projectconfig_var_addr(proj, idx);
}

/// projectconfig_var_getoffs
/// returns offset to pass to projectconfig_var_addr() to get project-config var of name. szout gets size of object.
pub fn projectconfig_var_getoffs(name: [*:0]const u8, szOut: *c_int) c_int {
	return fnPtrs.projectconfig_var_getoffs(name, szOut);
}

/// PromptForAction
/// Uses the action list to choose an action. Call with session_mode=1 to create a session (init_id will be the initial action to select, or 0), then poll with session_mode=0, checking return value for user-selected action (will return 0 if no action selected yet, or -1 if the action window is no longer available). When finished, call with session_mode=-1.
pub fn PromptForAction(session_mode: c_int, init_id: c_int, section_id: c_int) c_int {
	return fnPtrs.PromptForAction(session_mode, init_id, section_id);
}

/// realloc_cmd_ptr
/// special use for NeedBig script API functions - reallocates a NeedBig buffer and updates its size, returns false on error
pub fn realloc_cmd_ptr(ptr: [*:0]u8, ptr_size: *c_int, new_size: c_int) bool {
	return fnPtrs.realloc_cmd_ptr(ptr, ptr_size, new_size);
}

/// ReaperGetPitchShiftAPI
/// version must be REAPER_PITCHSHIFT_API_VER
pub fn ReaperGetPitchShiftAPI(version: c_int) ?*anyopaque {
	return fnPtrs.ReaperGetPitchShiftAPI(version);
}

/// ReaScriptError
/// Causes REAPER to display the error message after the current ReaScript finishes.
pub fn ReaScriptError(errmsg: [*:0]const u8) void  {
	return fnPtrs.ReaScriptError(errmsg);
}

/// RecursiveCreateDirectory
/// returns positive value on success, 0 on failure.
pub fn RecursiveCreateDirectory(path: [*:0]const u8, ignored: c_int) c_int {
	return fnPtrs.RecursiveCreateDirectory(path, ignored);
}

/// reduce_open_files
/// garbage-collects extra open files and closes them. if flags has 1 set, this is done incrementally (call this from a regular timer, if desired). if flags has 2 set, files are aggressively closed (they may need to be re-opened very soon). returns number of files closed by this call.
pub fn reduce_open_files(flags: c_int) c_int {
	return fnPtrs.reduce_open_files(flags);
}

/// RefreshToolbar
/// See RefreshToolbar2.
pub fn RefreshToolbar(command_id: c_int) void  {
	return fnPtrs.RefreshToolbar(command_id);
}

/// RefreshToolbar2
/// Refresh the toolbar button states of a toggle action.
pub fn RefreshToolbar2(section_id: c_int, command_id: c_int) void  {
	return fnPtrs.RefreshToolbar2(section_id, command_id);
}

/// relative_fn
/// Makes a filename "in" relative to the current project, if any.
pub fn relative_fn(in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) void  {
	return fnPtrs.relative_fn(in, out, out_sz);
}

/// RemoveTrackSend
/// Remove a send/receive/hardware output, return true on success. category is <0 for receives, 0=sends, >0 for hardware outputs. See CreateTrackSend, GetSetTrackSendInfo, GetTrackSendInfo_Value, SetTrackSendInfo_Value, GetTrackNumSends.
pub fn RemoveTrackSend(tr: *MediaTrack, category: c_int, sendidx: c_int) bool {
	return fnPtrs.RemoveTrackSend(tr, category, sendidx);
}

/// RenderFileSection
/// Not available while playing back.
pub fn RenderFileSection(source_filename: [*:0]const u8, target_filename: [*:0]const u8, start_percent: f64, end_percent: f64, playrate: f64) bool {
	return fnPtrs.RenderFileSection(source_filename, target_filename, start_percent, end_percent, playrate);
}

/// ReorderSelectedTracks
/// Moves all selected tracks to immediately above track specified by index beforeTrackIdx, returns false if no tracks were selected. makePrevFolder=0 for normal, 1 = as child of track preceding track specified by beforeTrackIdx, 2 = if track preceding track specified by beforeTrackIdx is last track in folder, extend folder
pub fn ReorderSelectedTracks(beforeTrackIdx: c_int, makePrevFolder: c_int) bool {
	return fnPtrs.ReorderSelectedTracks(beforeTrackIdx, makePrevFolder);
}

/// Resample_EnumModes
pub fn Resample_EnumModes(mode: c_int) [*:0]const u8 {
	return fnPtrs.Resample_EnumModes(mode);
}

/// Resampler_Create
pub fn Resampler_Create() ?*anyopaque {
	return fnPtrs.Resampler_Create();
}

/// resolve_fn
/// See resolve_fn2.
pub fn resolve_fn(in: [*:0]const u8, out: [*:0]u8, out_sz: c_int) void  {
	return fnPtrs.resolve_fn(in, out, out_sz);
}

/// resolve_fn2
/// Resolves a filename "in" by using project settings etc. If no file found, out will be a copy of in.
pub fn resolve_fn2(in: [*:0]const u8, out: [*:0]u8, out_sz: c_int, checkSubDirOptional: [*:0]const u8) void  {
	return fnPtrs.resolve_fn2(in, out, out_sz, checkSubDirOptional);
}

/// ReverseNamedCommandLookup
/// Get the named command for the given command ID. The returned string will not start with '_' (e.g. it will return "SWS_ABOUT"), it will be NULL if command_id is a native action.
pub fn ReverseNamedCommandLookup(command_id: c_int) [*:0]const u8 {
	return fnPtrs.ReverseNamedCommandLookup(command_id);
}

/// ScaleFromEnvelopeMode
/// See GetEnvelopeScalingMode.
pub fn ScaleFromEnvelopeMode(scaling_mode: c_int, val: f64) f64 {
	return fnPtrs.ScaleFromEnvelopeMode(scaling_mode, val);
}

/// ScaleToEnvelopeMode
/// See GetEnvelopeScalingMode.
pub fn ScaleToEnvelopeMode(scaling_mode: c_int, val: f64) f64 {
	return fnPtrs.ScaleToEnvelopeMode(scaling_mode, val);
}

/// screenset_register
pub fn screenset_register(id: [*:0]u8, callbackFunc: *anyopaque, param: *anyopaque) void  {
	return fnPtrs.screenset_register(id, callbackFunc, param);
}

/// screenset_registerNew
pub fn screenset_registerNew(id: [*:0]u8, callbackFunc: screensetNewCallbackFunc, param: *anyopaque) void  {
	return fnPtrs.screenset_registerNew(id, callbackFunc, param);
}

/// screenset_unregister
pub fn screenset_unregister(id: [*:0]u8) void  {
	return fnPtrs.screenset_unregister(id);
}

/// screenset_unregisterByParam
pub fn screenset_unregisterByParam(param: *anyopaque) void  {
	return fnPtrs.screenset_unregisterByParam(param);
}

/// screenset_updateLastFocus
pub fn screenset_updateLastFocus(prevWin: HWND) void  {
	return fnPtrs.screenset_updateLastFocus(prevWin);
}

/// SectionFromUniqueID
pub fn SectionFromUniqueID(uniqueID: c_int) ?*anyopaque {
	return fnPtrs.SectionFromUniqueID(uniqueID);
}

/// SelectAllMediaItems
pub fn SelectAllMediaItems(proj: *ReaProject, selected: bool) void  {
	return fnPtrs.SelectAllMediaItems(proj, selected);
}

/// SelectProjectInstance
pub fn SelectProjectInstance(proj: *ReaProject) void  {
	return fnPtrs.SelectProjectInstance(proj);
}

/// SendLocalOscMessage
/// Send an OSC message to REAPER. See CreateLocalOscHandler, DestroyLocalOscHandler.
pub fn SendLocalOscMessage(local_osc_handler: *anyopaque, msg: [*:0]const u8, msglen: c_int) void  {
	return fnPtrs.SendLocalOscMessage(local_osc_handler, msg, msglen);
}

/// SetActiveTake
/// set this take active in this media item
pub fn SetActiveTake(take: *MediaItem_Take) void  {
	return fnPtrs.SetActiveTake(take);
}

/// SetAutomationMode
/// sets all or selected tracks to mode.
pub fn SetAutomationMode(mode: c_int, onlySel: bool) void  {
	return fnPtrs.SetAutomationMode(mode, onlySel);
}

/// SetCurrentBPM
/// set current BPM in project, set wantUndo=true to add undo point
pub fn SetCurrentBPM(__proj: *ReaProject, bpm: f64, wantUndo: bool) void  {
	return fnPtrs.SetCurrentBPM(__proj, bpm, wantUndo);
}

/// SetCursorContext
/// You must use this to change the focus programmatically. mode=0 to focus track panels, 1 to focus the arrange window, 2 to focus the arrange window and select env (or env==NULL to clear the current track/take envelope selection)
pub fn SetCursorContext(mode: c_int, envInOptional: *TrackEnvelope) void  {
	return fnPtrs.SetCursorContext(mode, envInOptional);
}

/// SetEditCurPos
pub fn SetEditCurPos(time: f64, moveview: bool, seekplay: bool) void  {
	return fnPtrs.SetEditCurPos(time, moveview, seekplay);
}

/// SetEditCurPos2
pub fn SetEditCurPos2(proj: *ReaProject, time: f64, moveview: bool, seekplay: bool) void  {
	return fnPtrs.SetEditCurPos2(proj, time, moveview, seekplay);
}

/// SetEnvelopePoint
/// Set attributes of an envelope point. Values that are not supplied will be ignored. If setting multiple points at once, set noSort=true, and call Envelope_SortPoints when done. See SetEnvelopePointEx.
pub fn SetEnvelopePoint(envelope: *TrackEnvelope, ptidx: c_int, timeInOptional: *f64, valueInOptional: *f64, shapeInOptional: *c_int, tensionInOptional: *f64, selectedInOptional: *bool, noSortInOptional: *bool) bool {
	return fnPtrs.SetEnvelopePoint(envelope, ptidx, timeInOptional, valueInOptional, shapeInOptional, tensionInOptional, selectedInOptional, noSortInOptional);
}

/// SetEnvelopePointEx
/// Set attributes of an envelope point. Values that are not supplied will be ignored. If setting multiple points at once, set noSort=true, and call Envelope_SortPoints when done.
/// autoitem_idx=-1 for the underlying envelope, 0 for the first automation item on the envelope, etc.
/// For automation items, pass autoitem_idx|0x10000000 to base ptidx on the number of points in one full loop iteration,
/// even if the automation item is trimmed so that not all points are visible.
/// Otherwise, ptidx will be based on the number of visible points in the automation item, including all loop iterations.
/// See CountEnvelopePointsEx, GetEnvelopePointEx, InsertEnvelopePointEx, DeleteEnvelopePointEx.
pub fn SetEnvelopePointEx(envelope: *TrackEnvelope, autoitem_idx: c_int, ptidx: c_int, timeInOptional: *f64, valueInOptional: *f64, shapeInOptional: *c_int, tensionInOptional: *f64, selectedInOptional: *bool, noSortInOptional: *bool) bool {
	return fnPtrs.SetEnvelopePointEx(envelope, autoitem_idx, ptidx, timeInOptional, valueInOptional, shapeInOptional, tensionInOptional, selectedInOptional, noSortInOptional);
}

/// SetEnvelopeStateChunk
/// Sets the RPPXML state of an envelope, returns true if successful. Undo flag is a performance/caching hint.
pub fn SetEnvelopeStateChunk(env: *TrackEnvelope, str: [*:0]const u8, isundoOptional: bool) bool {
	return fnPtrs.SetEnvelopeStateChunk(env, str, isundoOptional);
}

/// SetExtState
/// Set the extended state value for a specific section and key. persist=true means the value should be stored and reloaded the next time REAPER is opened. See GetExtState, DeleteExtState, HasExtState.
pub fn SetExtState(section: [*:0]const u8, key: [*:0]const u8, value: [*:0]const u8, persist: bool) void  {
	return fnPtrs.SetExtState(section, key, value, persist);
}

/// SetGlobalAutomationOverride
/// mode: see GetGlobalAutomationOverride
pub fn SetGlobalAutomationOverride(mode: c_int) void  {
	return fnPtrs.SetGlobalAutomationOverride(mode);
}

/// SetItemStateChunk
/// Sets the RPPXML state of an item, returns true if successful. Undo flag is a performance/caching hint.
pub fn SetItemStateChunk(item: *MediaItem, str: [*:0]const u8, isundoOptional: bool) bool {
	return fnPtrs.SetItemStateChunk(item, str, isundoOptional);
}

/// SetMasterTrackVisibility
/// set &1 to show the master track in the TCP, &2 to show in the mixer. Returns the previous visibility state. See GetMasterTrackVisibility.
pub fn SetMasterTrackVisibility(flag: c_int) c_int {
	return fnPtrs.SetMasterTrackVisibility(flag);
}

/// SetMediaItemInfo_Value
/// Set media item numerical-value attributes.
/// B_MUTE : bool * : muted (item solo overrides). setting this value will clear C_MUTE_SOLO.
/// B_MUTE_ACTUAL : bool * : muted (ignores solo). setting this value will not affect C_MUTE_SOLO.
/// C_MUTE_SOLO : char * : solo override (-1=soloed, 0=no override, 1=unsoloed). note that this API does not automatically unsolo other items when soloing (nor clear the unsolos when clearing the last soloed item), it must be done by the caller via action or via this API.
/// B_LOOPSRC : bool * : loop source
/// B_ALLTAKESPLAY : bool * : all takes play
/// B_UISEL : bool * : selected in arrange view
/// C_BEATATTACHMODE : char * : item timebase, -1=track or project default, 1=beats (position, length, rate), 2=beats (position only). for auto-stretch timebase: C_BEATATTACHMODE=1, C_AUTOSTRETCH=1
/// C_AUTOSTRETCH: : char * : auto-stretch at project tempo changes, 1=enabled, requires C_BEATATTACHMODE=1
/// C_LOCK : char * : locked, &1=locked
/// D_VOL : double * : item volume,  0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_POSITION : double * : item position in seconds
/// D_LENGTH : double * : item length in seconds
/// D_SNAPOFFSET : double * : item snap offset in seconds
/// D_FADEINLEN : double * : item manual fadein length in seconds
/// D_FADEOUTLEN : double * : item manual fadeout length in seconds
/// D_FADEINDIR : double * : item fadein curvature, -1..1
/// D_FADEOUTDIR : double * : item fadeout curvature, -1..1
/// D_FADEINLEN_AUTO : double * : item auto-fadein length in seconds, -1=no auto-fadein
/// D_FADEOUTLEN_AUTO : double * : item auto-fadeout length in seconds, -1=no auto-fadeout
/// C_FADEINSHAPE : int * : fadein shape, 0..6, 0=linear
/// C_FADEOUTSHAPE : int * : fadeout shape, 0..6, 0=linear
/// I_GROUPID : int * : group ID, 0=no group
/// I_LASTY : int * : Y-position of track in pixels (read-only)
/// I_LASTH : int * : height in track in pixels (read-only)
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_CURTAKE : int * : active take number
/// IP_ITEMNUMBER : int, item number on this track (read-only, returns the item number directly)
/// F_FREEMODE_Y : float * : free item positioning Y-position, 0=top of track, 1=bottom of track (will never be 1)
/// F_FREEMODE_H : float * : free item positioning height, 0=no height, 1=full height of track (will never be 0)
/// 
pub fn SetMediaItemInfo_Value(item: *MediaItem, parmname: [*:0]const u8, newvalue: f64) bool {
	return fnPtrs.SetMediaItemInfo_Value(item, parmname, newvalue);
}

/// SetMediaItemLength
/// Redraws the screen only if refreshUI == true.
/// See UpdateArrange().
pub fn SetMediaItemLength(item: *MediaItem, length: f64, refreshUI: bool) bool {
	return fnPtrs.SetMediaItemLength(item, length, refreshUI);
}

/// SetMediaItemPosition
/// Redraws the screen only if refreshUI == true.
/// See UpdateArrange().
pub fn SetMediaItemPosition(item: *MediaItem, position: f64, refreshUI: bool) bool {
	return fnPtrs.SetMediaItemPosition(item, position, refreshUI);
}

/// SetMediaItemSelected
pub fn SetMediaItemSelected(item: *MediaItem, selected: bool) void  {
	return fnPtrs.SetMediaItemSelected(item, selected);
}

/// SetMediaItemTake_Source
/// Set media source of media item take. The old source will not be destroyed, it is the caller's responsibility to retrieve it and destroy it after. If source already exists in any project, it will be duplicated before being set. C/C++ code should not use this and instead use GetSetMediaItemTakeInfo() with P_SOURCE to manage ownership directly.
pub fn SetMediaItemTake_Source(take: *MediaItem_Take, source: *PCM_source) bool {
	return fnPtrs.SetMediaItemTake_Source(take, source);
}

/// SetMediaItemTakeInfo_Value
/// Set media item take numerical-value attributes.
/// D_STARTOFFS : double * : start offset in source media, in seconds
/// D_VOL : double * : take volume, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc, negative if take polarity is flipped
/// D_PAN : double * : take pan, -1..1
/// D_PANLAW : double * : take pan law, -1=default, 0.5=-6dB, 1.0=+0dB, etc
/// D_PLAYRATE : double * : take playback rate, 0.5=half speed, 1=normal, 2=double speed, etc
/// D_PITCH : double * : take pitch adjustment in semitones, -12=one octave down, 0=normal, +12=one octave up, etc
/// B_PPITCH : bool * : preserve pitch when changing playback rate
/// I_CHANMODE : int * : channel mode, 0=normal, 1=reverse stereo, 2=downmix, 3=left, 4=right
/// I_PITCHMODE : int * : pitch shifter mode, -1=projext default, otherwise high 2 bytes=shifter, low 2 bytes=parameter
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// IP_TAKENUMBER : int : take number (read-only, returns the take number directly)
/// 
pub fn SetMediaItemTakeInfo_Value(take: *MediaItem_Take, parmname: [*:0]const u8, newvalue: f64) bool {
	return fnPtrs.SetMediaItemTakeInfo_Value(take, parmname, newvalue);
}

/// SetMediaTrackInfo_Value
/// Set track numerical-value attributes.
/// B_MUTE : bool * : muted
/// B_PHASE : bool * : track phase inverted
/// B_RECMON_IN_EFFECT : bool * : record monitoring in effect (current audio-thread playback state, read-only)
/// IP_TRACKNUMBER : int : track number 1-based, 0=not found, -1=master track (read-only, returns the int directly)
/// I_SOLO : int * : soloed, 0=not soloed, 1=soloed, 2=soloed in place, 5=safe soloed, 6=safe soloed in place
/// I_FXEN : int * : fx enabled, 0=bypassed, !0=fx active
/// I_RECARM : int * : record armed, 0=not record armed, 1=record armed
/// I_RECINPUT : int * : record input, <0=no input. if 4096 set, input is MIDI and low 5 bits represent channel (0=all, 1-16=only chan), next 6 bits represent physical input (63=all, 62=VKB). If 4096 is not set, low 10 bits (0..1023) are input start channel (ReaRoute/Loopback start at 512). If 2048 is set, input is multichannel input (using track channel count), or if 1024 is set, input is stereo input, otherwise input is mono.
/// I_RECMODE : int * : record mode, 0=input, 1=stereo out, 2=none, 3=stereo out w/latency compensation, 4=midi output, 5=mono out, 6=mono out w/ latency compensation, 7=midi overdub, 8=midi replace
/// I_RECMON : int * : record monitoring, 0=off, 1=normal, 2=not when playing (tape style)
/// I_RECMONITEMS : int * : monitor items while recording, 0=off, 1=on
/// I_AUTOMODE : int * : track automation mode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch
/// I_NCHAN : int * : number of track channels, 2-64, even numbers only
/// I_SELECTED : int * : track selected, 0=unselected, 1=selected
/// I_WNDH : int * : current TCP window height in pixels including envelopes (read-only)
/// I_TCPH : int * : current TCP window height in pixels not including envelopes (read-only)
/// I_TCPY : int * : current TCP window Y-position in pixels relative to top of arrange view (read-only)
/// I_MCPX : int * : current MCP X-position in pixels relative to mixer container
/// I_MCPY : int * : current MCP Y-position in pixels relative to mixer container
/// I_MCPW : int * : current MCP width in pixels
/// I_MCPH : int * : current MCP height in pixels
/// I_FOLDERDEPTH : int * : folder depth change, 0=normal, 1=track is a folder parent, -1=track is the last in the innermost folder, -2=track is the last in the innermost and next-innermost folders, etc
/// I_FOLDERCOMPACT : int * : folder compacted state (only valid on folders), 0=normal, 1=small, 2=tiny children
/// I_MIDIHWOUT : int * : track midi hardware output index, <0=disabled, low 5 bits are which channels (0=all, 1-16), next 5 bits are output device index (0-31)
/// I_PERFFLAGS : int * : track performance flags, &1=no media buffering, &2=no anticipative FX
/// I_CUSTOMCOLOR : int * : custom color, OS dependent color|0x100000 (i.e. ColorToNative(r,g,b)|0x100000). If you do not |0x100000, then it will not be used, but will store the color
/// I_HEIGHTOVERRIDE : int * : custom height override for TCP window, 0 for none, otherwise size in pixels
/// B_HEIGHTLOCK : bool * : track height lock (must set I_HEIGHTOVERRIDE before locking)
/// D_VOL : double * : trim volume of track, 0=-inf, 0.5=-6dB, 1=+0dB, 2=+6dB, etc
/// D_PAN : double * : trim pan of track, -1..1
/// D_WIDTH : double * : width of track, -1..1
/// D_DUALPANL : double * : dualpan position 1, -1..1, only if I_PANMODE==6
/// D_DUALPANR : double * : dualpan position 2, -1..1, only if I_PANMODE==6
/// I_PANMODE : int * : pan mode, 0=classic 3.x, 3=new balance, 5=stereo pan, 6=dual pan
/// D_PANLAW : double * : pan law of track, <0=project default, 1=+0dB, etc
/// P_ENV:<envchunkname : TrackEnvelope*, read only. Call with :<VOLENV, :<PANENV, etc appended.
/// B_SHOWINMIXER : bool * : track control panel visible in mixer (do not use on master track)
/// B_SHOWINTCP : bool * : track control panel visible in arrange view (do not use on master track)
/// B_MAINSEND : bool * : track sends audio to parent
/// C_MAINSEND_OFFS : char * : channel offset of track send to parent
/// B_FREEMODE : bool * : track free item positioning enabled (call UpdateTimeline() after changing)
/// C_BEATATTACHMODE : char * : track timebase, -1=project default, 0=time, 1=beats (position, length, rate), 2=beats (position only)
/// F_MCP_FXSEND_SCALE : float * : scale of fx+send area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_FXPARM_SCALE : float * : scale of fx parameter area in MCP (0=minimum allowed, 1=maximum allowed)
/// F_MCP_SENDRGN_SCALE : float * : scale of send area as proportion of the fx+send total area (0=minimum allowed, 1=maximum allowed)
/// F_TCP_FXPARM_SCALE : float * : scale of TCP parameter area when TCP FX are embedded (0=min allowed, default, 1=max allowed)
/// I_PLAY_OFFSET_FLAG : int * : track playback offset state, &1=bypassed, &2=offset value is measured in samples (otherwise measured in seconds)
/// D_PLAY_OFFSET : double * : track playback offset, units depend on I_PLAY_OFFSET_FLAG
/// 
pub fn SetMediaTrackInfo_Value(tr: *MediaTrack, parmname: [*:0]const u8, newvalue: f64) bool {
	return fnPtrs.SetMediaTrackInfo_Value(tr, parmname, newvalue);
}

/// SetMIDIEditorGrid
/// Set the MIDI editor grid division. 0.25=quarter note, 1.0/3.0=half note tripet, etc.
pub fn SetMIDIEditorGrid(project: *ReaProject, division: f64) void  {
	return fnPtrs.SetMIDIEditorGrid(project, division);
}

/// SetMixerScroll
/// Scroll the mixer so that leftmosttrack is the leftmost visible track. Returns the leftmost track after scrolling, which may be different from the passed-in track if there are not enough tracks to its right.
pub fn SetMixerScroll(leftmosttrack: *MediaTrack) ?*anyopaque {
	return fnPtrs.SetMixerScroll(leftmosttrack);
}

/// SetMouseModifier
/// Set the mouse modifier assignment for a specific modifier key assignment, in a specific context.
/// Context is a string like "MM_CTX_ITEM". Find these strings by modifying an assignment in 
/// Preferences/Editing/Mouse Modifiers, then looking in reaper-mouse.ini.
/// Modifier flag is a number from 0 to 15: add 1 for shift, 2 for control, 4 for alt, 8 for win.
/// (macOS: add 1 for shift, 2 for command, 4 for opt, 8 for control.)
/// For left-click and double-click contexts, the action can be any built-in command ID number
/// or any custom action ID string. Find built-in command IDs in the REAPER actions window
/// (enable "show action IDs" in the context menu), and find custom action ID strings in reaper-kb.ini.
/// For built-in mouse modifier behaviors, find action IDs (which will be low numbers)
/// by modifying an assignment in Preferences/Editing/Mouse Modifiers, then looking in reaper-mouse.ini.
/// Assigning an action of -1 will reset that mouse modifier behavior to factory default.
/// See GetMouseModifier.
/// 
pub fn SetMouseModifier(context: [*:0]const u8, modifier_flag: c_int, action: [*:0]const u8) void  {
	return fnPtrs.SetMouseModifier(context, modifier_flag, action);
}

/// SetOnlyTrackSelected
/// Set exactly one track selected, deselect all others
pub fn SetOnlyTrackSelected(track: *MediaTrack) void  {
	return fnPtrs.SetOnlyTrackSelected(track);
}

/// SetProjectGrid
/// Set the arrange view grid division. 0.25=quarter note, 1.0/3.0=half note triplet, etc.
pub fn SetProjectGrid(project: *ReaProject, division: f64) void  {
	return fnPtrs.SetProjectGrid(project, division);
}

/// SetProjectMarker
pub fn SetProjectMarker(markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8) bool {
	return fnPtrs.SetProjectMarker(markrgnindexnumber, isrgn, pos, rgnend, name);
}

/// SetProjectMarker2
pub fn SetProjectMarker2(proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8) bool {
	return fnPtrs.SetProjectMarker2(proj, markrgnindexnumber, isrgn, pos, rgnend, name);
}

/// SetProjectMarker3
pub fn SetProjectMarker3(proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, color: c_int) bool {
	return fnPtrs.SetProjectMarker3(proj, markrgnindexnumber, isrgn, pos, rgnend, name, color);
}

/// SetProjectMarker4
/// color should be 0 to not change, or ColorToNative(r,g,b)|0x1000000, flags&1 to clear name
pub fn SetProjectMarker4(proj: *ReaProject, markrgnindexnumber: c_int, isrgn: bool, pos: f64, rgnend: f64, name: [*:0]const u8, color: c_int, flags: c_int) bool {
	return fnPtrs.SetProjectMarker4(proj, markrgnindexnumber, isrgn, pos, rgnend, name, color, flags);
}

/// SetProjectMarkerByIndex
/// See SetProjectMarkerByIndex2.
pub fn SetProjectMarkerByIndex(proj: *ReaProject, markrgnidx: c_int, isrgn: bool, pos: f64, rgnend: f64, IDnumber: c_int, name: [*:0]const u8, color: c_int) bool {
	return fnPtrs.SetProjectMarkerByIndex(proj, markrgnidx, isrgn, pos, rgnend, IDnumber, name, color);
}

/// SetProjectMarkerByIndex2
/// Differs from SetProjectMarker4 in that markrgnidx is 0 for the first marker/region, 1 for the next, etc (see EnumProjectMarkers3), rather than representing the displayed marker/region ID number (see SetProjectMarker3). Function will fail if attempting to set a duplicate ID number for a region (duplicate ID numbers for markers are OK). , flags&1 to clear name.
pub fn SetProjectMarkerByIndex2(proj: *ReaProject, markrgnidx: c_int, isrgn: bool, pos: f64, rgnend: f64, IDnumber: c_int, name: [*:0]const u8, color: c_int, flags: c_int) bool {
	return fnPtrs.SetProjectMarkerByIndex2(proj, markrgnidx, isrgn, pos, rgnend, IDnumber, name, color, flags);
}

/// SetProjExtState
/// Save a key/value pair for a specific extension, to be restored the next time this specific project is loaded. Typically extname will be the name of a reascript or extension section. If key is NULL or "", all extended data for that extname will be deleted.  If val is NULL or "", the data previously associated with that key will be deleted. Returns the size of the state for this extname. See GetProjExtState, EnumProjExtState.
pub fn SetProjExtState(proj: *ReaProject, extname: [*:0]const u8, key: [*:0]const u8, value: [*:0]const u8) c_int {
	return fnPtrs.SetProjExtState(proj, extname, key, value);
}

/// SetRegionRenderMatrix
/// Add (addorremove > 0) or remove (addorremove < 0) a track from this region when using the region render matrix.
pub fn SetRegionRenderMatrix(proj: *ReaProject, regionindex: c_int, track: *MediaTrack, addorremove: c_int) void  {
	return fnPtrs.SetRegionRenderMatrix(proj, regionindex, track, addorremove);
}

/// SetRenderLastError
/// Used by pcmsink objects to set an error to display while creating the pcmsink object.
pub fn SetRenderLastError(errorstr: [*:0]const u8) void  {
	return fnPtrs.SetRenderLastError(errorstr);
}

/// SetTakeMarker
/// Inserts or updates a take marker. If idx<0, a take marker will be added, otherwise an existing take marker will be updated. Returns the index of the new or updated take marker (which may change if srcPos is updated). See GetNumTakeMarkers, GetTakeMarker, DeleteTakeMarker
pub fn SetTakeMarker(take: *MediaItem_Take, idx: c_int, nameIn: [*:0]const u8, srcposInOptional: *f64, colorInOptional: *c_int) c_int {
	return fnPtrs.SetTakeMarker(take, idx, nameIn, srcposInOptional, colorInOptional);
}

/// SetTakeStretchMarker
/// Adds or updates a stretch marker. If idx<0, stretch marker will be added. If idx>=0, stretch marker will be updated. When adding, if srcposInOptional is omitted, source position will be auto-calculated. When updating a stretch marker, if srcposInOptional is omitted, srcpos will not be modified. Position/srcposition values will be constrained to nearby stretch markers. Returns index of stretch marker, or -1 if did not insert (or marker already existed at time).
pub fn SetTakeStretchMarker(take: *MediaItem_Take, idx: c_int, pos: f64, srcposInOptional: *f64) c_int {
	return fnPtrs.SetTakeStretchMarker(take, idx, pos, srcposInOptional);
}

/// SetTakeStretchMarkerSlope
/// See GetTakeStretchMarkerSlope
pub fn SetTakeStretchMarkerSlope(take: *MediaItem_Take, idx: c_int, slope: f64) bool {
	return fnPtrs.SetTakeStretchMarkerSlope(take, idx, slope);
}

/// SetTempoTimeSigMarker
/// Set parameters of a tempo/time signature marker. Provide either timepos (with measurepos=-1, beatpos=-1), or measurepos and beatpos (with timepos=-1). If timesig_num and timesig_denom are zero, the previous time signature will be used. ptidx=-1 will insert a new tempo/time signature marker. See CountTempoTimeSigMarkers, GetTempoTimeSigMarker, AddTempoTimeSigMarker.
pub fn SetTempoTimeSigMarker(proj: *ReaProject, ptidx: c_int, timepos: f64, measurepos: c_int, beatpos: f64, bpm: f64, timesig_num: c_int, timesig_denom: c_int, lineartempo: bool) bool {
	return fnPtrs.SetTempoTimeSigMarker(proj, ptidx, timepos, measurepos, beatpos, bpm, timesig_num, timesig_denom, lineartempo);
}

/// SetThemeColor
/// Temporarily updates the theme color to the color specified (or the theme default color if -1 is specified). Returns -1 on failure, otherwise returns the color (or transformed-color). Note that the UI is not updated by this, the caller should call UpdateArrange() etc as necessary. If the low bit of flags is set, any color transformations are bypassed. To read a value see GetThemeColor.
pub fn SetThemeColor(ini_key: [*:0]const u8, color: c_int, flagsOptional: c_int) c_int {
	return fnPtrs.SetThemeColor(ini_key, color, flagsOptional);
}

/// SetToggleCommandState
/// Updates the toggle state of an action, returns true if succeeded. Only ReaScripts can have their toggle states changed programmatically. See RefreshToolbar2.
pub fn SetToggleCommandState(section_id: c_int, command_id: c_int, state: c_int) bool {
	return fnPtrs.SetToggleCommandState(section_id, command_id, state);
}

/// SetTrackAutomationMode
pub fn SetTrackAutomationMode(tr: *MediaTrack, mode: c_int) void  {
	return fnPtrs.SetTrackAutomationMode(tr, mode);
}

/// SetTrackColor
/// Set the custom track color, color is OS dependent (i.e. ColorToNative(r,g,b).
pub fn SetTrackColor(track: *MediaTrack, color: c_int) void  {
	return fnPtrs.SetTrackColor(track, color);
}

/// SetTrackMIDILyrics
/// Set all MIDI lyrics on the track. Lyrics will be stuffed into any MIDI items found in range. Flag is unused at present. str is passed in as beat position, tab, text, tab (example with flag=2: "1.1.2\tLyric for measure 1 beat 2\t.1.1\tLyric for measure 2 beat 1	"). See GetTrackMIDILyrics
pub fn SetTrackMIDILyrics(track: *MediaTrack, flag: c_int, str: [*:0]const u8) bool {
	return fnPtrs.SetTrackMIDILyrics(track, flag, str);
}

/// SetTrackMIDINoteName
/// channel < 0 assigns these note names to all channels.
pub fn SetTrackMIDINoteName(track: c_int, pitch: c_int, chan: c_int, name: [*:0]const u8) bool {
	return fnPtrs.SetTrackMIDINoteName(track, pitch, chan, name);
}

/// SetTrackMIDINoteNameEx
/// channel < 0 assigns note name to all channels. pitch 128 assigns name for CC0, pitch 129 for CC1, etc.
pub fn SetTrackMIDINoteNameEx(proj: *ReaProject, track: *MediaTrack, pitch: c_int, chan: c_int, name: [*:0]const u8) bool {
	return fnPtrs.SetTrackMIDINoteNameEx(proj, track, pitch, chan, name);
}

/// SetTrackSelected
pub fn SetTrackSelected(track: *MediaTrack, selected: bool) void  {
	return fnPtrs.SetTrackSelected(track, selected);
}

/// SetTrackSendInfo_Value
/// Set send/receive/hardware output numerical-value attributes, return true on success.
/// category is <0 for receives, 0=sends, >0 for hardware outputs
/// parameter names:
/// B_MUTE : bool *
/// B_PHASE : bool *, true to flip phase
/// B_MONO : bool *
/// D_VOL : double *, 1.0 = +0dB etc
/// D_PAN : double *, -1..+1
/// D_PANLAW : double *,1.0=+0.0db, 0.5=-6dB, -1.0 = projdef etc
/// I_SENDMODE : int *, 0=post-fader, 1=pre-fx, 2=post-fx (deprecated), 3=post-fx
/// I_AUTOMODE : int * : automation mode (-1=use track automode, 0=trim/off, 1=read, 2=touch, 3=write, 4=latch)
/// I_SRCCHAN : int *, index,&1024=mono, -1 for none
/// I_DSTCHAN : int *, index, &1024=mono, otherwise stereo pair, hwout:&512=rearoute
/// I_MIDIFLAGS : int *, low 5 bits=source channel 0=all, 1-16, next 5 bits=dest channel, 0=orig, 1-16=chanSee CreateTrackSend, RemoveTrackSend, GetTrackNumSends.
pub fn SetTrackSendInfo_Value(tr: *MediaTrack, category: c_int, sendidx: c_int, parmname: [*:0]const u8, newvalue: f64) bool {
	return fnPtrs.SetTrackSendInfo_Value(tr, category, sendidx, parmname, newvalue);
}

/// SetTrackSendUIPan
/// send_idx<0 for receives, >=0 for hw ouputs, >=nb_of_hw_ouputs for sends. isend=1 for end of edit, -1 for an instant edit (such as reset), 0 for normal tweak.
pub fn SetTrackSendUIPan(track: *MediaTrack, send_idx: c_int, pan: f64, isend: c_int) bool {
	return fnPtrs.SetTrackSendUIPan(track, send_idx, pan, isend);
}

/// SetTrackSendUIVol
/// send_idx<0 for receives, >=0 for hw ouputs, >=nb_of_hw_ouputs for sends. isend=1 for end of edit, -1 for an instant edit (such as reset), 0 for normal tweak.
pub fn SetTrackSendUIVol(track: *MediaTrack, send_idx: c_int, vol: f64, isend: c_int) bool {
	return fnPtrs.SetTrackSendUIVol(track, send_idx, vol, isend);
}

/// SetTrackStateChunk
/// Sets the RPPXML state of a track, returns true if successful. Undo flag is a performance/caching hint.
pub fn SetTrackStateChunk(track: *MediaTrack, str: [*:0]const u8, isundoOptional: bool) bool {
	return fnPtrs.SetTrackStateChunk(track, str, isundoOptional);
}

/// ShowActionList
pub fn ShowActionList(caller: *KbdSectionInfo, callerWnd: HWND) void  {
	return fnPtrs.ShowActionList(caller, callerWnd);
}

/// ShowConsoleMsg
/// Show a message to the user (also useful for debugging). Send "\n" for newline, "" to clear the console. See ClearConsole
pub fn ShowConsoleMsg(msg: [*:0]const u8) void  {
	return fnPtrs.ShowConsoleMsg(msg);
}

/// ShowMessageBox
/// type 0=OK,1=OKCANCEL,2=ABORTRETRYIGNORE,3=YESNOCANCEL,4=YESNO,5=RETRYCANCEL : ret 1=OK,2=CANCEL,3=ABORT,4=RETRY,5=IGNORE,6=YES,7=NO
pub fn ShowMessageBox(msg: [*:0]const u8, title: [*:0]const u8, typeOut: c_int) c_int {
	return fnPtrs.ShowMessageBox(msg, title, typeOut);
}

/// ShowPopupMenu
/// shows a context menu, valid names include: track_input, track_panel, track_area, track_routing, item, ruler, envelope, envelope_point, envelope_item. ctxOptional can be a track pointer for track_*, item pointer for item* (but is optional). for envelope_point, ctx2Optional has point index, ctx3Optional has item index (0=main envelope, 1=first AI). for envelope_item, ctx2Optional has AI index (1=first AI)
pub fn ShowPopupMenu(name: [*:0]const u8, x: c_int, y: c_int, hwndParentOptional: HWND, ctxOptional: *anyopaque, ctx2Optional: c_int, ctx3Optional: c_int) void  {
	return fnPtrs.ShowPopupMenu(name, x, y, hwndParentOptional, ctxOptional, ctx2Optional, ctx3Optional);
}

/// SLIDER2DB
pub fn SLIDER2DB(y: f64) f64 {
	return fnPtrs.SLIDER2DB(y);
}

/// SnapToGrid
pub fn SnapToGrid(project: *ReaProject, time_pos: f64) f64 {
	return fnPtrs.SnapToGrid(project, time_pos);
}

/// SoloAllTracks
/// solo=2 for SIP
pub fn SoloAllTracks(solo: c_int) void  {
	return fnPtrs.SoloAllTracks(solo);
}

/// Splash_GetWnd
/// gets the splash window, in case you want to display a message over it. Returns NULL when the sphah window is not displayed.
pub fn Splash_GetWnd() HWND  {
	return fnPtrs.Splash_GetWnd();
}

/// SplitMediaItem
/// the original item becomes the left-hand split, the function returns the right-hand split (or NULL if the split failed)
pub fn SplitMediaItem(item: *MediaItem, position: f64) ?*anyopaque {
	return fnPtrs.SplitMediaItem(item, position);
}

/// StopPreview
/// return nonzero on success
pub fn StopPreview(preview: *preview_register_t) c_int {
	return fnPtrs.StopPreview(preview);
}

/// StopTrackPreview
/// return nonzero on success
pub fn StopTrackPreview(preview: *preview_register_t) c_int {
	return fnPtrs.StopTrackPreview(preview);
}

/// StopTrackPreview2
/// return nonzero on success
pub fn StopTrackPreview2(proj: *anyopaque, preview: *preview_register_t) c_int {
	return fnPtrs.StopTrackPreview2(proj, preview);
}

/// stringToGuid
pub fn stringToGuid(str: [*:0]const u8, g: *GUID) void  {
	return fnPtrs.stringToGuid(str, g);
}

/// StuffMIDIMessage
/// Stuffs a 3 byte MIDI message into either the Virtual MIDI Keyboard queue, or the MIDI-as-control input queue, or sends to a MIDI hardware output. mode=0 for VKB, 1 for control (actions map etc), 2 for VKB-on-current-channel; 16 for external MIDI device 0, 17 for external MIDI device 1, etc; see GetNumMIDIOutputs, GetMIDIOutputName.
pub fn StuffMIDIMessage(mode: c_int, msg1: c_int, msg2: c_int, msg3: c_int) void  {
	return fnPtrs.StuffMIDIMessage(mode, msg1, msg2, msg3);
}

/// TakeFX_AddByName
/// Adds or queries the position of a named FX in a take. See TrackFX_AddByName() for information on fxname and instantiate.
pub fn TakeFX_AddByName(take: *MediaItem_Take, fxname: [*:0]const u8, instantiate: c_int) c_int {
	return fnPtrs.TakeFX_AddByName(take, fxname, instantiate);
}

/// TakeFX_CopyToTake
/// Copies (or moves) FX from src_take to dest_take. Can be used with src_track=dest_track to reorder. 
pub fn TakeFX_CopyToTake(src_take: *MediaItem_Take, src_fx: c_int, dest_take: *MediaItem_Take, dest_fx: c_int, is_move: bool) void  {
	return fnPtrs.TakeFX_CopyToTake(src_take, src_fx, dest_take, dest_fx, is_move);
}

/// TakeFX_CopyToTrack
/// Copies (or moves) FX from src_take to dest_track. dest_fx can have 0x1000000 set to reference input FX. 
pub fn TakeFX_CopyToTrack(src_take: *MediaItem_Take, src_fx: c_int, dest_track: *MediaTrack, dest_fx: c_int, is_move: bool) void  {
	return fnPtrs.TakeFX_CopyToTrack(src_take, src_fx, dest_track, dest_fx, is_move);
}

/// TakeFX_Delete
/// Remove a FX from take chain (returns true on success)
pub fn TakeFX_Delete(take: *MediaItem_Take, fx: c_int) bool {
	return fnPtrs.TakeFX_Delete(take, fx);
}

/// TakeFX_EndParamEdit
pub fn TakeFX_EndParamEdit(take: *MediaItem_Take, fx: c_int, param: c_int) bool {
	return fnPtrs.TakeFX_EndParamEdit(take, fx, param);
}

/// TakeFX_FormatParamValue
/// Note: only works with FX that support Cockos VST extensions.
pub fn TakeFX_FormatParamValue(take: *MediaItem_Take, fx: c_int, param: c_int, val: f64, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TakeFX_FormatParamValue(take, fx, param, val, buf, buf_sz);
}

/// TakeFX_FormatParamValueNormalized
/// Note: only works with FX that support Cockos VST extensions.
pub fn TakeFX_FormatParamValueNormalized(take: *MediaItem_Take, fx: c_int, param: c_int, value: f64, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TakeFX_FormatParamValueNormalized(take, fx, param, value, buf, buf_sz);
}

/// TakeFX_GetChainVisible
/// returns index of effect visible in chain, or -1 for chain hidden, or -2 for chain visible but no effect selected
pub fn TakeFX_GetChainVisible(take: *MediaItem_Take) c_int {
	return fnPtrs.TakeFX_GetChainVisible(take);
}

/// TakeFX_GetCount
pub fn TakeFX_GetCount(take: *MediaItem_Take) c_int {
	return fnPtrs.TakeFX_GetCount(take);
}

/// TakeFX_GetEnabled
/// See TakeFX_SetEnabled
pub fn TakeFX_GetEnabled(take: *MediaItem_Take, fx: c_int) bool {
	return fnPtrs.TakeFX_GetEnabled(take, fx);
}

/// TakeFX_GetEnvelope
/// Returns the FX parameter envelope. If the envelope does not exist and create=true, the envelope will be created.
pub fn TakeFX_GetEnvelope(take: *MediaItem_Take, fxindex: c_int, parameterindex: c_int, create: bool) ?*anyopaque {
	return fnPtrs.TakeFX_GetEnvelope(take, fxindex, parameterindex, create);
}

/// TakeFX_GetFloatingWindow
/// returns HWND of floating window for effect index, if any
pub fn TakeFX_GetFloatingWindow(take: *MediaItem_Take, index: c_int) HWND  {
	return fnPtrs.TakeFX_GetFloatingWindow(take, index);
}

/// TakeFX_GetFormattedParamValue
pub fn TakeFX_GetFormattedParamValue(take: *MediaItem_Take, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TakeFX_GetFormattedParamValue(take, fx, param, buf, buf_sz);
}

/// TakeFX_GetFXGUID
pub fn TakeFX_GetFXGUID(take: *MediaItem_Take, fx: c_int) ?*anyopaque {
	return fnPtrs.TakeFX_GetFXGUID(take, fx);
}

/// TakeFX_GetFXName
pub fn TakeFX_GetFXName(take: *MediaItem_Take, fx: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TakeFX_GetFXName(take, fx, buf, buf_sz);
}

/// TakeFX_GetIOSize
/// sets the number of input/output pins for FX if available, returns plug-in type or -1 on error
pub fn TakeFX_GetIOSize(take: *MediaItem_Take, fx: c_int, inputPinsOutOptional: *c_int, outputPinsOutOptional: *c_int) c_int {
	return fnPtrs.TakeFX_GetIOSize(take, fx, inputPinsOutOptional, outputPinsOutOptional);
}

/// TakeFX_GetNamedConfigParm
/// gets plug-in specific named configuration value (returns true on success). see TrackFX_GetNamedConfigParm
pub fn TakeFX_GetNamedConfigParm(take: *MediaItem_Take, fx: c_int, parmname: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) bool {
	return fnPtrs.TakeFX_GetNamedConfigParm(take, fx, parmname, bufOut, bufOut_sz);
}

/// TakeFX_GetNumParams
pub fn TakeFX_GetNumParams(take: *MediaItem_Take, fx: c_int) c_int {
	return fnPtrs.TakeFX_GetNumParams(take, fx);
}

/// TakeFX_GetOffline
/// See TakeFX_SetOffline
pub fn TakeFX_GetOffline(take: *MediaItem_Take, fx: c_int) bool {
	return fnPtrs.TakeFX_GetOffline(take, fx);
}

/// TakeFX_GetOpen
/// Returns true if this FX UI is open in the FX chain window or a floating window. See TakeFX_SetOpen
pub fn TakeFX_GetOpen(take: *MediaItem_Take, fx: c_int) bool {
	return fnPtrs.TakeFX_GetOpen(take, fx);
}

/// TakeFX_GetParam
pub fn TakeFX_GetParam(take: *MediaItem_Take, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64) f64 {
	return fnPtrs.TakeFX_GetParam(take, fx, param, minvalOut, maxvalOut);
}

/// TakeFX_GetParameterStepSizes
pub fn TakeFX_GetParameterStepSizes(take: *MediaItem_Take, fx: c_int, param: c_int, stepOut: *f64, smallstepOut: *f64, largestepOut: *f64, istoggleOut: *bool) bool {
	return fnPtrs.TakeFX_GetParameterStepSizes(take, fx, param, stepOut, smallstepOut, largestepOut, istoggleOut);
}

/// TakeFX_GetParamEx
pub fn TakeFX_GetParamEx(take: *MediaItem_Take, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64, midvalOut: *f64) f64 {
	return fnPtrs.TakeFX_GetParamEx(take, fx, param, minvalOut, maxvalOut, midvalOut);
}

/// TakeFX_GetParamName
pub fn TakeFX_GetParamName(take: *MediaItem_Take, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TakeFX_GetParamName(take, fx, param, buf, buf_sz);
}

/// TakeFX_GetParamNormalized
pub fn TakeFX_GetParamNormalized(take: *MediaItem_Take, fx: c_int, param: c_int) f64 {
	return fnPtrs.TakeFX_GetParamNormalized(take, fx, param);
}

/// TakeFX_GetPinMappings
/// gets the effective channel mapping bitmask for a particular pin. high32OutOptional will be set to the high 32 bits
pub fn TakeFX_GetPinMappings(tr: *MediaItem_Take, fx: c_int, isoutput: c_int, pin: c_int, high32OutOptional: *c_int) c_int {
	return fnPtrs.TakeFX_GetPinMappings(tr, fx, isoutput, pin, high32OutOptional);
}

/// TakeFX_GetPreset
/// Get the name of the preset currently showing in the REAPER dropdown, or the full path to a factory preset file for VST3 plug-ins (.vstpreset). Returns false if the current FX parameters do not exactly match the preset (in other words, if the user loaded the preset but moved the knobs afterward). See TakeFX_SetPreset.
pub fn TakeFX_GetPreset(take: *MediaItem_Take, fx: c_int, presetname: [*:0]u8, presetname_sz: c_int) bool {
	return fnPtrs.TakeFX_GetPreset(take, fx, presetname, presetname_sz);
}

/// TakeFX_GetPresetIndex
/// Returns current preset index, or -1 if error. numberOfPresetsOut will be set to total number of presets available. See TakeFX_SetPresetByIndex
pub fn TakeFX_GetPresetIndex(take: *MediaItem_Take, fx: c_int, numberOfPresetsOut: *c_int) c_int {
	return fnPtrs.TakeFX_GetPresetIndex(take, fx, numberOfPresetsOut);
}

/// TakeFX_GetUserPresetFilename
pub fn TakeFX_GetUserPresetFilename(take: *MediaItem_Take, fx: c_int, fnOut: [*:0]u8, fn_sz: c_int) void  {
	return fnPtrs.TakeFX_GetUserPresetFilename(take, fx, fnOut, fn_sz);
}

/// TakeFX_NavigatePresets
/// presetmove==1 activates the next preset, presetmove==-1 activates the previous preset, etc.
pub fn TakeFX_NavigatePresets(take: *MediaItem_Take, fx: c_int, presetmove: c_int) bool {
	return fnPtrs.TakeFX_NavigatePresets(take, fx, presetmove);
}

/// TakeFX_SetEnabled
/// See TakeFX_GetEnabled
pub fn TakeFX_SetEnabled(take: *MediaItem_Take, fx: c_int, enabled: bool) void  {
	return fnPtrs.TakeFX_SetEnabled(take, fx, enabled);
}

/// TakeFX_SetNamedConfigParm
/// gets plug-in specific named configuration value (returns true on success)
pub fn TakeFX_SetNamedConfigParm(take: *MediaItem_Take, fx: c_int, parmname: [*:0]const u8, value: [*:0]const u8) bool {
	return fnPtrs.TakeFX_SetNamedConfigParm(take, fx, parmname, value);
}

/// TakeFX_SetOffline
/// See TakeFX_GetOffline
pub fn TakeFX_SetOffline(take: *MediaItem_Take, fx: c_int, offline: bool) void  {
	return fnPtrs.TakeFX_SetOffline(take, fx, offline);
}

/// TakeFX_SetOpen
/// Open this FX UI. See TakeFX_GetOpen
pub fn TakeFX_SetOpen(take: *MediaItem_Take, fx: c_int, open: bool) void  {
	return fnPtrs.TakeFX_SetOpen(take, fx, open);
}

/// TakeFX_SetParam
pub fn TakeFX_SetParam(take: *MediaItem_Take, fx: c_int, param: c_int, val: f64) bool {
	return fnPtrs.TakeFX_SetParam(take, fx, param, val);
}

/// TakeFX_SetParamNormalized
pub fn TakeFX_SetParamNormalized(take: *MediaItem_Take, fx: c_int, param: c_int, value: f64) bool {
	return fnPtrs.TakeFX_SetParamNormalized(take, fx, param, value);
}

/// TakeFX_SetPinMappings
/// sets the channel mapping bitmask for a particular pin. returns false if unsupported (not all types of plug-ins support this capability)
pub fn TakeFX_SetPinMappings(tr: *MediaItem_Take, fx: c_int, isoutput: c_int, pin: c_int, low32bits: c_int, hi32bits: c_int) bool {
	return fnPtrs.TakeFX_SetPinMappings(tr, fx, isoutput, pin, low32bits, hi32bits);
}

/// TakeFX_SetPreset
/// Activate a preset with the name shown in the REAPER dropdown. Full paths to .vstpreset files are also supported for VST3 plug-ins. See TakeFX_GetPreset.
pub fn TakeFX_SetPreset(take: *MediaItem_Take, fx: c_int, presetname: [*:0]const u8) bool {
	return fnPtrs.TakeFX_SetPreset(take, fx, presetname);
}

/// TakeFX_SetPresetByIndex
/// Sets the preset idx, or the factory preset (idx==-2), or the default user preset (idx==-1). Returns true on success. See TakeFX_GetPresetIndex.
pub fn TakeFX_SetPresetByIndex(take: *MediaItem_Take, fx: c_int, idx: c_int) bool {
	return fnPtrs.TakeFX_SetPresetByIndex(take, fx, idx);
}

/// TakeFX_Show
/// showflag=0 for hidechain, =1 for show chain(index valid), =2 for hide floating window(index valid), =3 for show floating window (index valid)
pub fn TakeFX_Show(take: *MediaItem_Take, index: c_int, showFlag: c_int) void  {
	return fnPtrs.TakeFX_Show(take, index, showFlag);
}

/// TakeIsMIDI
/// Returns true if the active take contains MIDI.
pub fn TakeIsMIDI(take: *MediaItem_Take) bool {
	return fnPtrs.TakeIsMIDI(take);
}

/// ThemeLayout_GetLayout
/// Gets theme layout information. section can be 'global' for global layout override, 'seclist' to enumerate a list of layout sections, otherwise a layout section such as 'mcp', 'tcp', 'trans', etc. idx can be -1 to query the current value, -2 to get the description of the section (if not global), -3 will return the current context DPI-scaling (256=normal, 512=retina, etc), or 0..x. returns false if failed.
pub fn ThemeLayout_GetLayout(section: [*:0]const u8, idx: c_int, nameOut: [*:0]u8, nameOut_sz: c_int) bool {
	return fnPtrs.ThemeLayout_GetLayout(section, idx, nameOut, nameOut_sz);
}

/// ThemeLayout_GetParameter
/// returns theme layout parameter. return value is cfg-name, or nil/empty if out of range.
pub fn ThemeLayout_GetParameter(wp: c_int, descOutOptional: [*:0]const u8, valueOutOptional: *c_int, defValueOutOptional: *c_int, minValueOutOptional: *c_int, maxValueOutOptional: *c_int) [*:0]const u8 {
	return fnPtrs.ThemeLayout_GetParameter(wp, descOutOptional, valueOutOptional, defValueOutOptional, minValueOutOptional, maxValueOutOptional);
}

/// ThemeLayout_RefreshAll
/// Refreshes all layouts
pub fn ThemeLayout_RefreshAll() void  {
	return fnPtrs.ThemeLayout_RefreshAll();
}

/// ThemeLayout_SetLayout
/// Sets theme layout override for a particular section -- section can be 'global' or 'mcp' etc. If setting global layout, prefix a ! to the layout string to clear any per-layout overrides. Returns false if failed.
pub fn ThemeLayout_SetLayout(section: [*:0]const u8, layout: [*:0]const u8) bool {
	return fnPtrs.ThemeLayout_SetLayout(section, layout);
}

/// ThemeLayout_SetParameter
/// sets theme layout parameter to value. persist=true in order to have change loaded on next theme load. note that the caller should update layouts via ??? to make changes visible.
pub fn ThemeLayout_SetParameter(wp: c_int, value: c_int, persist: bool) bool {
	return fnPtrs.ThemeLayout_SetParameter(wp, value, persist);
}

/// time_precise
/// Gets a precise system timestamp in seconds
pub fn time_precise() f64 {
	return fnPtrs.time_precise();
}

/// TimeMap2_beatsToTime
/// convert a beat position (or optionally a beats+measures if measures is non-NULL) to time.
pub fn TimeMap2_beatsToTime(proj: *ReaProject, tpos: f64, measuresInOptional: *c_int) f64 {
	return fnPtrs.TimeMap2_beatsToTime(proj, tpos, measuresInOptional);
}

/// TimeMap2_GetDividedBpmAtTime
/// get the effective BPM at the time (seconds) position (i.e. 2x in /8 signatures)
pub fn TimeMap2_GetDividedBpmAtTime(proj: *ReaProject, time: f64) f64 {
	return fnPtrs.TimeMap2_GetDividedBpmAtTime(proj, time);
}

/// TimeMap2_GetNextChangeTime
/// when does the next time map (tempo or time sig) change occur
pub fn TimeMap2_GetNextChangeTime(proj: *ReaProject, time: f64) f64 {
	return fnPtrs.TimeMap2_GetNextChangeTime(proj, time);
}

/// TimeMap2_QNToTime
/// converts project QN position to time.
pub fn TimeMap2_QNToTime(proj: *ReaProject, qn: f64) f64 {
	return fnPtrs.TimeMap2_QNToTime(proj, qn);
}

/// TimeMap2_timeToBeats
/// convert a time into beats.
/// if measures is non-NULL, measures will be set to the measure count, return value will be beats since measure.
/// if cml is non-NULL, will be set to current measure length in beats (i.e. time signature numerator)
/// if fullbeats is non-NULL, and measures is non-NULL, fullbeats will get the full beat count (same value returned if measures is NULL).
/// if cdenom is non-NULL, will be set to the current time signature denominator.
pub fn TimeMap2_timeToBeats(proj: *ReaProject, tpos: f64, measuresOutOptional: *c_int, cmlOutOptional: *c_int, fullbeatsOutOptional: *f64, cdenomOutOptional: *c_int) f64 {
	return fnPtrs.TimeMap2_timeToBeats(proj, tpos, measuresOutOptional, cmlOutOptional, fullbeatsOutOptional, cdenomOutOptional);
}

/// TimeMap2_timeToQN
/// converts project time position to QN position.
pub fn TimeMap2_timeToQN(proj: *ReaProject, tpos: f64) f64 {
	return fnPtrs.TimeMap2_timeToQN(proj, tpos);
}

/// TimeMap_curFrameRate
/// Gets project framerate, and optionally whether it is drop-frame timecode
pub fn TimeMap_curFrameRate(proj: *ReaProject, dropFrameOutOptional: *bool) f64 {
	return fnPtrs.TimeMap_curFrameRate(proj, dropFrameOutOptional);
}

/// TimeMap_GetDividedBpmAtTime
/// get the effective BPM at the time (seconds) position (i.e. 2x in /8 signatures)
pub fn TimeMap_GetDividedBpmAtTime(time: f64) f64 {
	return fnPtrs.TimeMap_GetDividedBpmAtTime(time);
}

/// TimeMap_GetMeasureInfo
/// Get the QN position and time signature information for the start of a measure. Return the time in seconds of the measure start.
pub fn TimeMap_GetMeasureInfo(proj: *ReaProject, measure: c_int, qn_startOut: *f64, qn_endOut: *f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, tempoOut: *f64) f64 {
	return fnPtrs.TimeMap_GetMeasureInfo(proj, measure, qn_startOut, qn_endOut, timesig_numOut, timesig_denomOut, tempoOut);
}

/// TimeMap_GetMetronomePattern
/// Fills in a string representing the active metronome pattern. For example, in a 7/8 measure divided 3+4, the pattern might be "1221222". The length of the string is the time signature numerator, and the function returns the time signature denominator.
pub fn TimeMap_GetMetronomePattern(proj: *ReaProject, time: f64, pattern: [*:0]u8, pattern_sz: c_int) c_int {
	return fnPtrs.TimeMap_GetMetronomePattern(proj, time, pattern, pattern_sz);
}

/// TimeMap_GetTimeSigAtTime
/// get the effective time signature and tempo
pub fn TimeMap_GetTimeSigAtTime(proj: *ReaProject, time: f64, timesig_numOut: *c_int, timesig_denomOut: *c_int, tempoOut: *f64) void  {
	return fnPtrs.TimeMap_GetTimeSigAtTime(proj, time, timesig_numOut, timesig_denomOut, tempoOut);
}

/// TimeMap_QNToMeasures
/// Find which measure the given QN position falls in.
pub fn TimeMap_QNToMeasures(proj: *ReaProject, qn: f64, qnMeasureStartOutOptional: *f64, qnMeasureEndOutOptional: *f64) c_int {
	return fnPtrs.TimeMap_QNToMeasures(proj, qn, qnMeasureStartOutOptional, qnMeasureEndOutOptional);
}

/// TimeMap_QNToTime
/// converts project QN position to time.
pub fn TimeMap_QNToTime(qn: f64) f64 {
	return fnPtrs.TimeMap_QNToTime(qn);
}

/// TimeMap_QNToTime_abs
/// Converts project quarter note count (QN) to time. QN is counted from the start of the project, regardless of any partial measures. See TimeMap2_QNToTime
pub fn TimeMap_QNToTime_abs(proj: *ReaProject, qn: f64) f64 {
	return fnPtrs.TimeMap_QNToTime_abs(proj, qn);
}

/// TimeMap_timeToQN
/// converts project QN position to time.
pub fn TimeMap_timeToQN(tpos: f64) f64 {
	return fnPtrs.TimeMap_timeToQN(tpos);
}

/// TimeMap_timeToQN_abs
/// Converts project time position to quarter note count (QN). QN is counted from the start of the project, regardless of any partial measures. See TimeMap2_timeToQN
pub fn TimeMap_timeToQN_abs(proj: *ReaProject, tpos: f64) f64 {
	return fnPtrs.TimeMap_timeToQN_abs(proj, tpos);
}

/// ToggleTrackSendUIMute
/// send_idx<0 for receives, >=0 for hw ouputs, >=nb_of_hw_ouputs for sends.
pub fn ToggleTrackSendUIMute(track: *MediaTrack, send_idx: c_int) bool {
	return fnPtrs.ToggleTrackSendUIMute(track, send_idx);
}

/// Track_GetPeakHoldDB
pub fn Track_GetPeakHoldDB(track: *MediaTrack, channel: c_int, clear: bool) f64 {
	return fnPtrs.Track_GetPeakHoldDB(track, channel, clear);
}

/// Track_GetPeakInfo
pub fn Track_GetPeakInfo(track: *MediaTrack, channel: c_int) f64 {
	return fnPtrs.Track_GetPeakInfo(track, channel);
}

/// TrackCtl_SetToolTip
/// displays tooltip at location, or removes if empty string
pub fn TrackCtl_SetToolTip(fmt: [*:0]const u8, xpos: c_int, ypos: c_int, topmost: bool) void  {
	return fnPtrs.TrackCtl_SetToolTip(fmt, xpos, ypos, topmost);
}

/// TrackFX_AddByName
/// Adds or queries the position of a named FX from the track FX chain (recFX=false) or record input FX/monitoring FX (recFX=true, monitoring FX are on master track). Specify a negative value for instantiate to always create a new effect, 0 to only query the first instance of an effect, or a positive value to add an instance if one is not found. If instantiate is <= -1000, it is used for the insertion position (-1000 is first item in chain, -1001 is second, etc). fxname can have prefix to specify type: VST3:,VST2:,VST:,AU:,JS:, or DX:, or FXADD: which adds selected items from the currently-open FX browser, FXADD:2 to limit to 2 FX added, or FXADD:2e to only succeed if exactly 2 FX are selected. Returns -1 on failure or the new position in chain on success.
pub fn TrackFX_AddByName(track: *MediaTrack, fxname: [*:0]const u8, recFX: bool, instantiate: c_int) c_int {
	return fnPtrs.TrackFX_AddByName(track, fxname, recFX, instantiate);
}

/// TrackFX_CopyToTake
/// Copies (or moves) FX from src_track to dest_take. src_fx can have 0x1000000 set to reference input FX. 
pub fn TrackFX_CopyToTake(src_track: *MediaTrack, src_fx: c_int, dest_take: *MediaItem_Take, dest_fx: c_int, is_move: bool) void  {
	return fnPtrs.TrackFX_CopyToTake(src_track, src_fx, dest_take, dest_fx, is_move);
}

/// TrackFX_CopyToTrack
/// Copies (or moves) FX from src_track to dest_track. Can be used with src_track=dest_track to reorder, FX indices have 0x1000000 set to reference input FX. 
pub fn TrackFX_CopyToTrack(src_track: *MediaTrack, src_fx: c_int, dest_track: *MediaTrack, dest_fx: c_int, is_move: bool) void  {
	return fnPtrs.TrackFX_CopyToTrack(src_track, src_fx, dest_track, dest_fx, is_move);
}

/// TrackFX_Delete
/// Remove a FX from track chain (returns true on success)
pub fn TrackFX_Delete(track: *MediaTrack, fx: c_int) bool {
	return fnPtrs.TrackFX_Delete(track, fx);
}

/// TrackFX_EndParamEdit
pub fn TrackFX_EndParamEdit(track: *MediaTrack, fx: c_int, param: c_int) bool {
	return fnPtrs.TrackFX_EndParamEdit(track, fx, param);
}

/// TrackFX_FormatParamValue
/// Note: only works with FX that support Cockos VST extensions.
pub fn TrackFX_FormatParamValue(track: *MediaTrack, fx: c_int, param: c_int, val: f64, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TrackFX_FormatParamValue(track, fx, param, val, buf, buf_sz);
}

/// TrackFX_FormatParamValueNormalized
/// Note: only works with FX that support Cockos VST extensions.
pub fn TrackFX_FormatParamValueNormalized(track: *MediaTrack, fx: c_int, param: c_int, value: f64, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TrackFX_FormatParamValueNormalized(track, fx, param, value, buf, buf_sz);
}

/// TrackFX_GetByName
/// Get the index of the first track FX insert that matches fxname. If the FX is not in the chain and instantiate is true, it will be inserted. See TrackFX_GetInstrument, TrackFX_GetEQ. Deprecated in favor of TrackFX_AddByName.
pub fn TrackFX_GetByName(track: *MediaTrack, fxname: [*:0]const u8, instantiate: bool) c_int {
	return fnPtrs.TrackFX_GetByName(track, fxname, instantiate);
}

/// TrackFX_GetChainVisible
/// returns index of effect visible in chain, or -1 for chain hidden, or -2 for chain visible but no effect selected
pub fn TrackFX_GetChainVisible(track: *MediaTrack) c_int {
	return fnPtrs.TrackFX_GetChainVisible(track);
}

/// TrackFX_GetCount
pub fn TrackFX_GetCount(track: *MediaTrack) c_int {
	return fnPtrs.TrackFX_GetCount(track);
}

/// TrackFX_GetEnabled
/// See TrackFX_SetEnabled
pub fn TrackFX_GetEnabled(track: *MediaTrack, fx: c_int) bool {
	return fnPtrs.TrackFX_GetEnabled(track, fx);
}

/// TrackFX_GetEQ
/// Get the index of ReaEQ in the track FX chain. If ReaEQ is not in the chain and instantiate is true, it will be inserted. See TrackFX_GetInstrument, TrackFX_GetByName.
pub fn TrackFX_GetEQ(track: *MediaTrack, instantiate: bool) c_int {
	return fnPtrs.TrackFX_GetEQ(track, instantiate);
}

/// TrackFX_GetEQBandEnabled
/// Returns true if the EQ band is enabled.
/// Returns false if the band is disabled, or if track/fxidx is not ReaEQ.
/// Bandtype: 0=lhipass, 1=loshelf, 2=band, 3=notch, 4=hishelf, 5=lopass.
/// Bandidx: 0=first band matching bandtype, 1=2nd band matching bandtype, etc.
/// See TrackFX_GetEQ, TrackFX_GetEQParam, TrackFX_SetEQParam, TrackFX_SetEQBandEnabled.
pub fn TrackFX_GetEQBandEnabled(track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int) bool {
	return fnPtrs.TrackFX_GetEQBandEnabled(track, fxidx, bandtype, bandidx);
}

/// TrackFX_GetEQParam
/// Returns false if track/fxidx is not ReaEQ.
/// Bandtype: -1=master gain, 0=lhipass, 1=loshelf, 2=band, 3=notch, 4=hishelf, 5=lopass.
/// Bandidx (ignored for master gain): 0=first band matching bandtype, 1=2nd band matching bandtype, etc.
/// Paramtype (ignored for master gain): 0=freq, 1=gain, 2=Q.
/// See TrackFX_GetEQ, TrackFX_SetEQParam, TrackFX_GetEQBandEnabled, TrackFX_SetEQBandEnabled.
pub fn TrackFX_GetEQParam(track: *MediaTrack, fxidx: c_int, paramidx: c_int, bandtypeOut: *c_int, bandidxOut: *c_int, paramtypeOut: *c_int, normvalOut: *f64) bool {
	return fnPtrs.TrackFX_GetEQParam(track, fxidx, paramidx, bandtypeOut, bandidxOut, paramtypeOut, normvalOut);
}

/// TrackFX_GetFloatingWindow
/// returns HWND of floating window for effect index, if any
pub fn TrackFX_GetFloatingWindow(track: *MediaTrack, index: c_int) HWND  {
	return fnPtrs.TrackFX_GetFloatingWindow(track, index);
}

/// TrackFX_GetFormattedParamValue
pub fn TrackFX_GetFormattedParamValue(track: *MediaTrack, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TrackFX_GetFormattedParamValue(track, fx, param, buf, buf_sz);
}

/// TrackFX_GetFXGUID
pub fn TrackFX_GetFXGUID(track: *MediaTrack, fx: c_int) ?*anyopaque {
	return fnPtrs.TrackFX_GetFXGUID(track, fx);
}

/// TrackFX_GetFXName
pub fn TrackFX_GetFXName(track: *MediaTrack, fx: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TrackFX_GetFXName(track, fx, buf, buf_sz);
}

/// TrackFX_GetInstrument
/// Get the index of the first track FX insert that is a virtual instrument, or -1 if none. See TrackFX_GetEQ, TrackFX_GetByName.
pub fn TrackFX_GetInstrument(track: *MediaTrack) c_int {
	return fnPtrs.TrackFX_GetInstrument(track);
}

/// TrackFX_GetIOSize
/// sets the number of input/output pins for FX if available, returns plug-in type or -1 on error
pub fn TrackFX_GetIOSize(track: *MediaTrack, fx: c_int, inputPinsOutOptional: *c_int, outputPinsOutOptional: *c_int) c_int {
	return fnPtrs.TrackFX_GetIOSize(track, fx, inputPinsOutOptional, outputPinsOutOptional);
}

/// TrackFX_GetNamedConfigParm
/// gets plug-in specific named configuration value (returns true on success). Special values: 'pdc' returns PDC latency. 'in_pin_0' returns name of first input pin (if available), 'out_pin_0' returns name of first output pin (if available), etc.
pub fn TrackFX_GetNamedConfigParm(track: *MediaTrack, fx: c_int, parmname: [*:0]const u8, bufOut: [*:0]u8, bufOut_sz: c_int) bool {
	return fnPtrs.TrackFX_GetNamedConfigParm(track, fx, parmname, bufOut, bufOut_sz);
}

/// TrackFX_GetNumParams
pub fn TrackFX_GetNumParams(track: *MediaTrack, fx: c_int) c_int {
	return fnPtrs.TrackFX_GetNumParams(track, fx);
}

/// TrackFX_GetOffline
/// See TrackFX_SetOffline
pub fn TrackFX_GetOffline(track: *MediaTrack, fx: c_int) bool {
	return fnPtrs.TrackFX_GetOffline(track, fx);
}

/// TrackFX_GetOpen
/// Returns true if this FX UI is open in the FX chain window or a floating window. See TrackFX_SetOpen
pub fn TrackFX_GetOpen(track: *MediaTrack, fx: c_int) bool {
	return fnPtrs.TrackFX_GetOpen(track, fx);
}

/// TrackFX_GetParam
pub fn TrackFX_GetParam(track: *MediaTrack, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64) f64 {
	return fnPtrs.TrackFX_GetParam(track, fx, param, minvalOut, maxvalOut);
}

/// TrackFX_GetParameterStepSizes
pub fn TrackFX_GetParameterStepSizes(track: *MediaTrack, fx: c_int, param: c_int, stepOut: *f64, smallstepOut: *f64, largestepOut: *f64, istoggleOut: *bool) bool {
	return fnPtrs.TrackFX_GetParameterStepSizes(track, fx, param, stepOut, smallstepOut, largestepOut, istoggleOut);
}

/// TrackFX_GetParamEx
pub fn TrackFX_GetParamEx(track: *MediaTrack, fx: c_int, param: c_int, minvalOut: *f64, maxvalOut: *f64, midvalOut: *f64) f64 {
	return fnPtrs.TrackFX_GetParamEx(track, fx, param, minvalOut, maxvalOut, midvalOut);
}

/// TrackFX_GetParamName
pub fn TrackFX_GetParamName(track: *MediaTrack, fx: c_int, param: c_int, buf: [*:0]u8, buf_sz: c_int) bool {
	return fnPtrs.TrackFX_GetParamName(track, fx, param, buf, buf_sz);
}

/// TrackFX_GetParamNormalized
pub fn TrackFX_GetParamNormalized(track: *MediaTrack, fx: c_int, param: c_int) f64 {
	return fnPtrs.TrackFX_GetParamNormalized(track, fx, param);
}

/// TrackFX_GetPinMappings
/// gets the effective channel mapping bitmask for a particular pin. high32OutOptional will be set to the high 32 bits
pub fn TrackFX_GetPinMappings(tr: *MediaTrack, fx: c_int, isoutput: c_int, pin: c_int, high32OutOptional: *c_int) c_int {
	return fnPtrs.TrackFX_GetPinMappings(tr, fx, isoutput, pin, high32OutOptional);
}

/// TrackFX_GetPreset
/// Get the name of the preset currently showing in the REAPER dropdown, or the full path to a factory preset file for VST3 plug-ins (.vstpreset). Returns false if the current FX parameters do not exactly match the preset (in other words, if the user loaded the preset but moved the knobs afterward). See TrackFX_SetPreset.
pub fn TrackFX_GetPreset(track: *MediaTrack, fx: c_int, presetname: [*:0]u8, presetname_sz: c_int) bool {
	return fnPtrs.TrackFX_GetPreset(track, fx, presetname, presetname_sz);
}

/// TrackFX_GetPresetIndex
/// Returns current preset index, or -1 if error. numberOfPresetsOut will be set to total number of presets available. See TrackFX_SetPresetByIndex
pub fn TrackFX_GetPresetIndex(track: *MediaTrack, fx: c_int, numberOfPresetsOut: *c_int) c_int {
	return fnPtrs.TrackFX_GetPresetIndex(track, fx, numberOfPresetsOut);
}

/// TrackFX_GetRecChainVisible
/// returns index of effect visible in record input chain, or -1 for chain hidden, or -2 for chain visible but no effect selected
pub fn TrackFX_GetRecChainVisible(track: *MediaTrack) c_int {
	return fnPtrs.TrackFX_GetRecChainVisible(track);
}

/// TrackFX_GetRecCount
/// returns count of record input FX. To access record input FX, use a FX indices [0x1000000..0x1000000+n). On the master track, this accesses monitoring FX rather than record input FX.
pub fn TrackFX_GetRecCount(track: *MediaTrack) c_int {
	return fnPtrs.TrackFX_GetRecCount(track);
}

/// TrackFX_GetUserPresetFilename
pub fn TrackFX_GetUserPresetFilename(track: *MediaTrack, fx: c_int, fnOut: [*:0]u8, fn_sz: c_int) void  {
	return fnPtrs.TrackFX_GetUserPresetFilename(track, fx, fnOut, fn_sz);
}

/// TrackFX_NavigatePresets
/// presetmove==1 activates the next preset, presetmove==-1 activates the previous preset, etc.
pub fn TrackFX_NavigatePresets(track: *MediaTrack, fx: c_int, presetmove: c_int) bool {
	return fnPtrs.TrackFX_NavigatePresets(track, fx, presetmove);
}

/// TrackFX_SetEnabled
/// See TrackFX_GetEnabled
pub fn TrackFX_SetEnabled(track: *MediaTrack, fx: c_int, enabled: bool) void  {
	return fnPtrs.TrackFX_SetEnabled(track, fx, enabled);
}

/// TrackFX_SetEQBandEnabled
/// Enable or disable a ReaEQ band.
/// Returns false if track/fxidx is not ReaEQ.
/// Bandtype: 0=lhipass, 1=loshelf, 2=band, 3=notch, 4=hishelf, 5=lopass.
/// Bandidx: 0=first band matching bandtype, 1=2nd band matching bandtype, etc.
/// See TrackFX_GetEQ, TrackFX_GetEQParam, TrackFX_SetEQParam, TrackFX_GetEQBandEnabled.
pub fn TrackFX_SetEQBandEnabled(track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int, enable: bool) bool {
	return fnPtrs.TrackFX_SetEQBandEnabled(track, fxidx, bandtype, bandidx, enable);
}

/// TrackFX_SetEQParam
/// Returns false if track/fxidx is not ReaEQ. Targets a band matching bandtype.
/// Bandtype: -1=master gain, 0=lhipass, 1=loshelf, 2=band, 3=notch, 4=hishelf, 5=lopass.
/// Bandidx (ignored for master gain): 0=target first band matching bandtype, 1=target 2nd band matching bandtype, etc.
/// Paramtype (ignored for master gain): 0=freq, 1=gain, 2=Q.
/// See TrackFX_GetEQ, TrackFX_GetEQParam, TrackFX_GetEQBandEnabled, TrackFX_SetEQBandEnabled.
pub fn TrackFX_SetEQParam(track: *MediaTrack, fxidx: c_int, bandtype: c_int, bandidx: c_int, paramtype: c_int, val: f64, isnorm: bool) bool {
	return fnPtrs.TrackFX_SetEQParam(track, fxidx, bandtype, bandidx, paramtype, val, isnorm);
}

/// TrackFX_SetNamedConfigParm
/// sets plug-in specific named configuration value (returns true on success)
pub fn TrackFX_SetNamedConfigParm(track: *MediaTrack, fx: c_int, parmname: [*:0]const u8, value: [*:0]const u8) bool {
	return fnPtrs.TrackFX_SetNamedConfigParm(track, fx, parmname, value);
}

/// TrackFX_SetOffline
/// See TrackFX_GetOffline
pub fn TrackFX_SetOffline(track: *MediaTrack, fx: c_int, offline: bool) void  {
	return fnPtrs.TrackFX_SetOffline(track, fx, offline);
}

/// TrackFX_SetOpen
/// Open this FX UI. See TrackFX_GetOpen
pub fn TrackFX_SetOpen(track: *MediaTrack, fx: c_int, open: bool) void  {
	return fnPtrs.TrackFX_SetOpen(track, fx, open);
}

/// TrackFX_SetParam
pub fn TrackFX_SetParam(track: *MediaTrack, fx: c_int, param: c_int, val: f64) bool {
	return fnPtrs.TrackFX_SetParam(track, fx, param, val);
}

/// TrackFX_SetParamNormalized
pub fn TrackFX_SetParamNormalized(track: *MediaTrack, fx: c_int, param: c_int, value: f64) bool {
	return fnPtrs.TrackFX_SetParamNormalized(track, fx, param, value);
}

/// TrackFX_SetPinMappings
/// sets the channel mapping bitmask for a particular pin. returns false if unsupported (not all types of plug-ins support this capability)
pub fn TrackFX_SetPinMappings(tr: *MediaTrack, fx: c_int, isoutput: c_int, pin: c_int, low32bits: c_int, hi32bits: c_int) bool {
	return fnPtrs.TrackFX_SetPinMappings(tr, fx, isoutput, pin, low32bits, hi32bits);
}

/// TrackFX_SetPreset
/// Activate a preset with the name shown in the REAPER dropdown. Full paths to .vstpreset files are also supported for VST3 plug-ins. See TrackFX_GetPreset.
pub fn TrackFX_SetPreset(track: *MediaTrack, fx: c_int, presetname: [*:0]const u8) bool {
	return fnPtrs.TrackFX_SetPreset(track, fx, presetname);
}

/// TrackFX_SetPresetByIndex
/// Sets the preset idx, or the factory preset (idx==-2), or the default user preset (idx==-1). Returns true on success. See TrackFX_GetPresetIndex.
pub fn TrackFX_SetPresetByIndex(track: *MediaTrack, fx: c_int, idx: c_int) bool {
	return fnPtrs.TrackFX_SetPresetByIndex(track, fx, idx);
}

/// TrackFX_Show
/// showflag=0 for hidechain, =1 for show chain(index valid), =2 for hide floating window(index valid), =3 for show floating window (index valid)
pub fn TrackFX_Show(track: *MediaTrack, index: c_int, showFlag: c_int) void  {
	return fnPtrs.TrackFX_Show(track, index, showFlag);
}

/// TrackList_AdjustWindows
pub fn TrackList_AdjustWindows(isMinor: bool) void  {
	return fnPtrs.TrackList_AdjustWindows(isMinor);
}

/// TrackList_UpdateAllExternalSurfaces
pub fn TrackList_UpdateAllExternalSurfaces() void  {
	return fnPtrs.TrackList_UpdateAllExternalSurfaces();
}

/// Undo_BeginBlock
/// call to start a new block
pub fn Undo_BeginBlock() void  {
	return fnPtrs.Undo_BeginBlock();
}

/// Undo_BeginBlock2
/// call to start a new block
pub fn Undo_BeginBlock2(proj: *ReaProject) void  {
	return fnPtrs.Undo_BeginBlock2(proj);
}

/// Undo_CanRedo2
/// returns string of next action,if able,NULL if not
pub fn Undo_CanRedo2(proj: *ReaProject) [*:0]const u8 {
	return fnPtrs.Undo_CanRedo2(proj);
}

/// Undo_CanUndo2
/// returns string of last action,if able,NULL if not
pub fn Undo_CanUndo2(proj: *ReaProject) [*:0]const u8 {
	return fnPtrs.Undo_CanUndo2(proj);
}

/// Undo_DoRedo2
/// nonzero if success
pub fn Undo_DoRedo2(proj: *ReaProject) c_int {
	return fnPtrs.Undo_DoRedo2(proj);
}

/// Undo_DoUndo2
/// nonzero if success
pub fn Undo_DoUndo2(proj: *ReaProject) c_int {
	return fnPtrs.Undo_DoUndo2(proj);
}

/// Undo_EndBlock
/// call to end the block,with extra flags if any,and a description
pub fn Undo_EndBlock(descchange: [*:0]const u8, extraflags: c_int) void  {
	return fnPtrs.Undo_EndBlock(descchange, extraflags);
}

/// Undo_EndBlock2
/// call to end the block,with extra flags if any,and a description
pub fn Undo_EndBlock2(proj: *ReaProject, descchange: [*:0]const u8, extraflags: c_int) void  {
	return fnPtrs.Undo_EndBlock2(proj, descchange, extraflags);
}

/// Undo_OnStateChange
/// limited state change to items
pub fn Undo_OnStateChange(descchange: [*:0]const u8) void  {
	return fnPtrs.Undo_OnStateChange(descchange);
}

/// Undo_OnStateChange2
/// limited state change to items
pub fn Undo_OnStateChange2(proj: *ReaProject, descchange: [*:0]const u8) void  {
	return fnPtrs.Undo_OnStateChange2(proj, descchange);
}

/// Undo_OnStateChange_Item
pub fn Undo_OnStateChange_Item(proj: *ReaProject, name: [*:0]const u8, item: *MediaItem) void  {
	return fnPtrs.Undo_OnStateChange_Item(proj, name, item);
}

/// Undo_OnStateChangeEx
/// trackparm=-1 by default,or if updating one fx chain,you can specify track index
pub fn Undo_OnStateChangeEx(descchange: [*:0]const u8, whichStates: c_int, trackparm: c_int) void  {
	return fnPtrs.Undo_OnStateChangeEx(descchange, whichStates, trackparm);
}

/// Undo_OnStateChangeEx2
/// trackparm=-1 by default,or if updating one fx chain,you can specify track index
pub fn Undo_OnStateChangeEx2(proj: *ReaProject, descchange: [*:0]const u8, whichStates: c_int, trackparm: c_int) void  {
	return fnPtrs.Undo_OnStateChangeEx2(proj, descchange, whichStates, trackparm);
}

/// update_disk_counters
/// Updates disk I/O statistics with bytes transferred since last call. notify REAPER of a write error by calling with readamt=0, writeamt=-101010110 for unknown or -101010111 for disk full
pub fn update_disk_counters(readamt: c_int, writeamt: c_int) void  {
	return fnPtrs.update_disk_counters(readamt, writeamt);
}

/// UpdateArrange
/// Redraw the arrange view
pub fn UpdateArrange() void  {
	return fnPtrs.UpdateArrange();
}

/// UpdateItemInProject
pub fn UpdateItemInProject(item: *MediaItem) void  {
	return fnPtrs.UpdateItemInProject(item);
}

/// UpdateTimeline
/// Redraw the arrange view and ruler
pub fn UpdateTimeline() void  {
	return fnPtrs.UpdateTimeline();
}

/// ValidatePtr
/// see ValidatePtr2
pub fn ValidatePtr(pointer: *anyopaque, ctypename: [*:0]const u8) bool {
	return fnPtrs.ValidatePtr(pointer, ctypename);
}

/// ValidatePtr2
/// Return true if the pointer is a valid object of the right type in proj (proj is ignored if pointer is itself a project). Supported types are: ReaProject*, MediaTrack*, MediaItem*, MediaItem_Take*, TrackEnvelope* and PCM_source*.
pub fn ValidatePtr2(proj: *ReaProject, pointer: *anyopaque, ctypename: [*:0]const u8) bool {
	return fnPtrs.ValidatePtr2(proj, pointer, ctypename);
}

/// ViewPrefs
/// Opens the prefs to a page, use pageByName if page is 0.
pub fn ViewPrefs(page: c_int, pageByName: [*:0]const u8) void  {
	return fnPtrs.ViewPrefs(page, pageByName);
}

/// WDL_VirtualWnd_ScaledBlitBG
pub fn WDL_VirtualWnd_ScaledBlitBG(dest: *LICE_IBitmap, src: *WDL_VirtualWnd_BGCfg, destx: c_int, desty: c_int, destw: c_int, desth: c_int, clipx: c_int, clipy: c_int, clipw: c_int, cliph: c_int, alpha: f32, mode: c_int) bool {
	return fnPtrs.WDL_VirtualWnd_ScaledBlitBG(dest, src, destx, desty, destw, desth, clipx, clipy, clipw, cliph, alpha, mode);
}
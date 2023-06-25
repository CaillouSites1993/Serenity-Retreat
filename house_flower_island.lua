-- Wellness & Relaxation Center
-- File: Relaxation.lua

-- Load libraries
local relaxation = {}

-- Variables
local yogaSessions = {}
local meditationSessions = {}
local spaTreatmentIds = {}

-- Create private variables
local _isOpen = false

-- Create functions
function relaxation.open()
    if _isOpen then
        return false -- Already open
    end
    
    _isOpen = true
    return true
end

function relaxation.close()
    if not _isOpen then
        return false -- Already closed
    end
    
    _isOpen = false
    return true
end

function relaxation.isOpen()
    return _isOpen
end

function relaxation.addYogaSession(session)
    table.insert(yogaSessions, session)
end

function relaxation.removeYogaSession(session)
    for i = 1, #yogaSessions do
        if yogaSessions[i] == session then
            table.remove(yogaSessions, i)
        end
    end
end

function relaxation.addMeditationSession(session)
    table.insert(meditationSessions, session)
end

function relaxation.removeMeditationSession(session)
    for i = 1, #meditationSessions do
        if meditationSessions[i] == session then
            table.remove(meditationSessions, i)
        end
    end
end

function relaxation.getYogaSessions()
    return yogaSessions
end

function relaxation.getMeditationSessions()
    return meditationSessions
end

function relaxation.addSpaTreatment(treatmentId)
    table.insert(spaTreatmentIds, treatmentId)
end

function relaxation.removeSpaTreatment(treatmentId)
    for i = 1, #spaTreatmentIds do
        if spaTreatmentIds[i] == treatmentId then
            table.remove(spaTreatmentIds, i)
        end
    end
end

function relaxation.getSpaTreatments()
    return spaTreatmentIds
end

return relaxation
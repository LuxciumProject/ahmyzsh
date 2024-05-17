#!/usr/bin/env bash

# -00000-openai_models.sh
export OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
function openai_models() {
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys
        curl -L -s https://api.openai.com/v1/models \
            -H "Authorization: Bearer ${OPENAI_API_KEY}" \
            -H "OpenAI-Organization: ${OPENAI_ORG_ID}" | jq
    else
        return 66
    fi
}
function openai_models_ids() {
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys

        local search="${1:-}"
        local ids
        ids=$(openai_models | jq '.data[].id' | tr -d '"')

        if [[ -n "${search}" ]]; then
            ids=$(echo "${ids}" | grep "${search}")
            if [[ -z "${ids}" ]]; then
                echo >&2 "No results found for '${search}'."
                return 1
            fi
        fi

        echo "${ids}" | jq -R -s -c 'split("\n")[:-1]' | jq '.[]'
        return 0
    fi
    return 1
}
#  // code-davinci-edit-001

function openai_text_edit() {
    instruction=$1
    input_text=$2
    edit_model=$3
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys
        # local full_edit
        full_edit="$(curl -s -X POST https://api.openai.com/v1/edits \
            -H "Content-Type: application/json" \
            -H "Authorization: Bearer ${OPENAI_API_KEY}" \
            -H "OpenAI-Organization: ${OPENAI_ORG_ID}" \
            -d "$(printf '%s\n' \
                "{\"model\": \"$edit_model\"," \
                "\"input\": $(echo "$input_text" | jq -R -s -c 'tojson')," \
                "\"instruction\": $(echo "$instruction" | jq -R -s -c 'tojson')," \
                "\"temperature\": 0.7," \
                "\"top_p\": 1," \
                "\"n\": 1}")")"
        # -d "{
        # \"model\": \"$edit_model\",
        # \"input\": \"$input_text\",
        # \"instruction\": \"$instruction\",
        # \"temperature\": 0.7,
        # \"top_p\": 1,
        # \"n\": 1
        # }")"
        export full_edit
        echo -ne "\n$YELLOW16"
        choices0="$(echo -e "${full_edit}" | jq -r '.choices[0].text // null' || echo "${full_edit}")"
        echo -ne "${RESET}\n"
        if [[ "${choices0}" == "null" ]]; then
            echo -ne "\n$RED8"
            /projects/monorepo-one/prompts/typing_prompter/python/main.py "${full_edit}"
            echo -ne "${RESET}\n"
        else
            echo -ne "\n$GREEN8"
            /projects/monorepo-one/prompts/typing_prompter/python/main.py "${choices0}"
            echo -ne "${RESET}\n"
        fi
    else
        return 1
    fi
}

function openai_translate_to_french() {
    input_text=$*
    openai_text_edit 'Translate input to french Canadian, use specifically the variant used in Quebec. If needed correct input for grammar and spelling first then convert into French Canadian. Finally, strip out any original input and output only the resulting text in French Canadian ussing usual punctuation.' "${input_text}" 'text-davinci-edit-001'

}

function openai_define() {
    input_text=$*
    openai_text_edit 'Give a definition of the word, give few synonyms, list antonyms if any' "${input_text}" 'text-davinci-edit-001'
}

function openai_shell() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'text-davinci-edit-001'

}

function davinci_shell() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'code-davinci-edit-001'

}

function help_shell() {
    input_text=$*
    openai_text_edit 'Help in the shell, suggest solutions or give explainations. In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command. Or find solutions for errors and problems, prefix each replies with \"help shell\ \>\"' "${input_text}" 'code-davinci-edit-001'
}

function typescript_help() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'text-davinci-edit-001'

}
# code-davinci-edit-001

# {Input:ANY utf8} {Output:ONLY fr_CA.utf8}
# | jq -r '.choices[0].text')" #echo \"$(openai_translate_to_french "hello my name is paul" | jq -r '.choices[0].text')\"

# {Input:ANY utf8} Translate input from any language into french. Correct input grammar and spelling if needed to make a better translation then convert into French Canadian. Use specifically the variant used in Quebec.Finally, strip out any original input and output only the resulting text usse usual punctuation. {Output:ONLY fr_CA.utf8}

# jq '.[]' #  IMPORTANT: «YOU MUST ONLY OUTPUT THE FRENCH VERSION». You will output text in French following these instructions: First, revise the grammar and spelling of the input text for correctness. Then translate into French Canadian, specifically using the Quebec variant. Finally, output the final French version using usual punctuation.

# Translate text into french, infer from the input text, correct text if needed, then translate into French Canadian, specifically using the Quebec variant. Finally, output the result using usual punctuation.

# Traduisez le texte en français, déduisez-en le sens et corrigez-le si nécessaire, puis traduisez-le en français canadien, en utilisant spécifiquement la variante québécoise. Enfin, produisez le résultat en utilisant la ponctuation habituelle.

# #!/usr/bin/env bash

# # openai_models.sh

# function openai_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#     else
#         return 1
#     fi
# }

# function openai_models_ids() {
#     local search_term="${1}"
#     local filtered_ids
#     filtered_ids=$(oa_models | jq -r '.data[].id | select(contains("'"${search_term}"'"))')
#     if [[ -z "${search_term}" ]]; then
#         filtered_ids=$(oa_models | jq -r '.data[].id')
#     fi

#     if [[ -z "${filtered_ids}" ]]; then
#         echo >&2 "No models match the search string '${search_term}'"
#         return 1
#     fi

#     echo "${filtered_ids}"
# }

# function oa_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#         return 0
#     fi
#     return 1
# }

# function list_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         oa_models | jq -r '.data[].id' | grep -iF "${1}" || true | while read -r id; do
#             echo "$id"
#         done
#         if [[ -z "$id" ]]; then
#             echo "No models match the search string '$1'" >&2
#             return 1
#         fi
#         return 0
#     fi
#     return 1
# }

# function oa_models_ids() {
#     oa_models | jq '.data[].id'
# }

# function oa_models_ids___() {
#     local search_string=$1
#     local matches=()

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }

# function oa_models_ids_() {
#     local search_string=$1
#     local model_ids
#     model_ids=$(oa_models | jq -r --arg search "$search_string" '.data[].id | select(index($search) != null)')
#     if [[ -z "$model_ids" ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi
#     printf '%s\n' "$model_ids"
#     return 0
# }

# function oa_models_ids__() {
#     local search_string=${1:-}

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     if [[ -z "$search_string" ]]; then
#         printf '%s\n' "${model_ids[@]}"
#         return 0
#     fi

#     local matches=()
#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }

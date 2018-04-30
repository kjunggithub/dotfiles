<?php

    $finder = PhpCsFixer\Finder::create()
        ->in(__DIR__);

    return PhpCsFixer\Config::create()
        ->setUsingCache(false)
        ->setRiskyAllowed(true)
        // ->setCacheFile(__DIR__.'/.php_cs.cache')
        ->setRules([
            '@PSR2' => true,
            'psr4' => true,
            'no_unneeded_control_parentheses' => true,
            'phpdoc_order' => true,
            'phpdoc_scalar' => true,
            'short_scalar_cast' => true,
            'blank_line_after_opening_tag' => true,
            'array_syntax' => ['syntax' => 'short'],
            'no_short_echo_tag' => true,
            'no_unused_imports' => true,
            'cast_spaces' => true,
            'standardize_not_equals' => true,
            'no_extra_consecutive_blank_lines' => true,
            'single_quote' => true,
            'ordered_imports' => ['sortAlgorithm' => 'length'],
            'normalize_index_brace' => true,
            'not_operator_with_successor_space' => true,
            'no_blank_lines_after_phpdoc' => true,
            'no_blank_lines_after_class_opening' => true,
            'linebreak_after_opening_tag' => true,
            // 'ordered_class_elements' => true,
            'object_operator_without_whitespace' => true,
            'hash_to_slash_comment' => true,
            'function_typehint_space' => true,
            'heredoc_to_nowdoc' => true,
            'include' => true,
            'concat_space' => ['spacing' => 'none'],

            'binary_operator_spaces' => [
                'align_double_arrow' => true,
                'align_equals' => false,
            ],
            'elseif' => true,
            'encoding' => true,
            'lowercase_cast' => true,
            'magic_constant_casing' => true,
            'blank_line_before_return' => true,
            'no_empty_comment' => true,
            'class_attributes_separation' => true,
            'no_leading_import_slash' => true,
            'no_leading_namespace_whitespace' => true,
            'no_mixed_echo_print' => ['use' => 'echo'],
            'no_short_bool_cast' => true,
            'ternary_operator_spaces' => true,
            'simplified_null_return' => true,
            'trailing_comma_in_multiline_array' => true,
            // 'combine_consecutive_unsets' => true,
            'native_function_casing' => true,
        ])
        ->setFinder($finder);


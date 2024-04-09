//
//  facts.swift
//
//
//  Created by Lakhan Lothiyi on 09/04/2024.
//

@_exported import ColorCubeObjc

extension CCFlags: OptionSet {
  public static let onlyBrightColors = CCOnlyBrightColors
  public static let onlyDarkColors = CCOnlyDarkColors
  public static let onlyDistinctColors = CCOnlyDistinctColors
  public static let orderByBrightness = CCOrderByBrightness
  public static let orderByDarkness = CCOrderByDarkness
  public static let avoidWhite = CCAvoidWhite
  public static let avoidBlack = CCAvoidBlack
}
